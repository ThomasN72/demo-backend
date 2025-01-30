import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  ParseIntPipe,
  NotFoundException,
} from '@nestjs/common';
import { InstanceService } from '../service/instance.service';
import { CreateInstanceDto } from '../dto/create-instance.dto';
import { UpdateInstanceDto } from '../dto/update-instance.dto';
import {
  ApiResponse,
  ApiTags,
  ApiCreatedResponse,
  ApiOperation,
} from '@nestjs/swagger';
import { Instance } from '../entity/instance.entity';

@Controller('instance')
@ApiTags('instance')
export class InstanceController {
  constructor(private readonly instanceService: InstanceService) {}

  // @Post()
  // @ApiOperation({ summary: 'Create an instance' })
  // @ApiCreatedResponse({
  //   description: 'The record has been successfully created.',
  //   type: Instance,
  // })
  // async create(@Body() createInstanceDto: CreateInstanceDto) {
  //   return await this.instanceService.create(createInstanceDto);
  // }

  // @Get(':id')
  // @ApiOperation({ summary: 'Get an user' })
  // @ApiResponse({ status: 200, description: 'User data.', type: Instance })
  // @ApiResponse({ status: 404, description: 'User not found.' })
  // async findOne(@Param('id', ParseIntPipe) id: number) {
  //   const user = await this.UserService.findOne(id);
  //   if (!user) {
  //     throw new NotFoundException();
  //   }
  //   return user;
  // }

  // @Patch(':id')
  // @ApiOperation({ summary: 'Update an user' })
  // async update(
  //   @Param('id', ParseIntPipe) id: number,
  //   @Body() updateUserDto: UpdateUserDto,
  // ) {
  //   return await this.UserService.update(id, updateUserDto);
  // }

  // @Delete(':id')
  // @ApiOperation({ summary: 'Delete an user' })
  // remove(@Param('id', ParseIntPipe) id: number) {
  //   return this.UserService.remove(+id);
  // }
}
