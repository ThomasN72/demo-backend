import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  CreateDateColumn,
  ManyToOne,
} from 'typeorm';
import { Field, Float, Int, ObjectType } from '@nestjs/graphql';
import { ApiProperty } from '@nestjs/swagger';
import { Instance } from './instance.entity';

@Entity()
@ObjectType()
export class CpuUsage {
  @PrimaryGeneratedColumn()
  @Field(() => Int)
  id: number;

  @Column({ type: 'float' })
  @Field(() => Float)
  @ApiProperty({ type: Number, example: 45.3 })
  usagePercentage: number;

  @CreateDateColumn()
  @Field()
  @ApiProperty({ type: Date, example: '2024-11-22T10:00:00.000Z' })
  timestamp: Date;

  @ManyToOne(() => Instance, (instance) => instance.cpuUsage, {
    onDelete: 'CASCADE',
  })
  instance: Instance;
}
