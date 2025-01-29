import {
  Entity,
  Column,
  PrimaryGeneratedColumn,
  CreateDateColumn,
  UpdateDateColumn,
  DeleteDateColumn,
} from 'typeorm';
import { Field, Int, ObjectType } from '@nestjs/graphql';
import { ApiProperty } from '@nestjs/swagger';

@Entity()
@ObjectType()
export class Instance {
  @PrimaryGeneratedColumn('increment')
  @Field((type) => Int)
  id: number;

  @Column({ nullable: true, length: 100, unique: true })
  @Field({ nullable: true })
  @ApiProperty({ type: String, example: 'Thomas' })
  name?: string;

  @Column({ length: 100 })
  @Field()
  @ApiProperty({ type: String, example: 'Thomas' })
  ip: string;

  @CreateDateColumn()
  @Field()
  @ApiProperty({ type: Date, example: '2024-11-22T10:00:00.000Z' })
  createdAt: Date;

  @UpdateDateColumn()
  @Field()
  @ApiProperty({ type: Date, example: '2024-11-22T12:00:00.000Z' })
  updatedAt: Date;

  @DeleteDateColumn({ nullable: true })
  @Field({ nullable: true })
  @ApiProperty({ type: Date, example: '2024-11-22T14:00:00.000Z' })
  deletedAt: Date;
}
