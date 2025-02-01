// update-instance.dto.ts
import { PartialType, InputType } from '@nestjs/graphql';
import { CreateInstanceDto } from './create-instance.dto';

@InputType()
export class UpdateInstanceDto extends PartialType(CreateInstanceDto) {}
