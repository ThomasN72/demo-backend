import { Field, InputType } from '@nestjs/graphql';
import { IsInt, IsNotEmpty, IsString, IsBoolean } from 'class-validator';
import { ApiProperty } from '@nestjs/swagger';

@InputType()
export class CreateUserDto {
  @Field()
  @IsNotEmpty()
  @IsString()
  @ApiProperty({ type: String, example: 'Thomas' })
  firstName: string;
  @Field({ nullable: true })
  @IsString()
  @ApiProperty({ type: String, example: 'Jefferson' })
  lastName: string;
  @Field({ nullable: true, defaultValue: true })
  @IsBoolean()
  @ApiProperty({ type: Boolean, example: false })
  isActive: boolean;
}
