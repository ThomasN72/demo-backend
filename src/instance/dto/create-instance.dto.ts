import { Field, InputType } from '@nestjs/graphql';
import { IsInt, IsNotEmpty, IsString, IsBoolean } from 'class-validator';
import { ApiProperty } from '@nestjs/swagger';

@InputType()
export class CreateInstanceDto {
  @Field()
  @IsNotEmpty()
  @IsString()
  @ApiProperty({ type: String, example: 'Thomas' })
  name: string;

  @Field({ nullable: true })
  @IsString()
  @ApiProperty({ type: String, example: 'Jefferson' })
  ip: string;
}
