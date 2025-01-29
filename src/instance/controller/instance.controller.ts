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
import { UserService } from '../service/instance.service';
import { CreateUserDto } from '../dto/create-instance.dto';
import { UpdateUserDto } from '../dto/update-instance.dto';
import {
  ApiResponse,
  ApiTags,
  ApiCreatedResponse,
  ApiOperation,
} from '@nestjs/swagger';
import { User } from '../entity/instance.entity';

@Controller('user')
@ApiTags('user')
export class UserController {
  constructor(private readonly UserService: UserService) {}

  @Post()
  @ApiOperation({ summary: 'Create an user' })
  @ApiCreatedResponse({
    description: 'The record has been successfully created.',
    type: User,
  })
  async create(@Body() createUserDto: CreateUserDto) {
    return await this.UserService.create(createUserDto);
  }

  @Get(':id')
  @ApiOperation({ summary: 'Get an user' })
  @ApiResponse({ status: 200, description: 'User data.', type: User })
  @ApiResponse({ status: 404, description: 'User not found.' })
  async findOne(@Param('id', ParseIntPipe) id: number) {
    const user = await this.UserService.findOne(id);
    if (!user) {
      throw new NotFoundException();
    }
    return user;
  }

  @Patch(':id')
  @ApiOperation({ summary: 'Update an user' })
  async update(
    @Param('id', ParseIntPipe) id: number,
    @Body() updateUserDto: UpdateUserDto,
  ) {
    return await this.UserService.update(id, updateUserDto);
  }

  @Delete(':id')
  @ApiOperation({ summary: 'Delete an user' })
  remove(@Param('id', ParseIntPipe) id: number) {
    return this.UserService.remove(+id);
  }
}

@ApiTags('user')
@Controller('users')
export class UsersController {
  constructor(private readonly UserService: UserService) {}

  @Get()
  @ApiOperation({ summary: 'Create users' })
  findAll() {
    return this.UserService.findAll();
  }
}
