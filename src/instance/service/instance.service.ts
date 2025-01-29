import { Injectable } from '@nestjs/common';
import { CreateUserDto } from '../dto/create-instance.dto';
import { UpdateUserDto } from '../dto/update-instance.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { User } from '../entity/instance.entity';

@Injectable()
export class UserService {
  constructor(
    @InjectRepository(User)
    private usersRepository: Repository<User>,
  ) {}

  async findUserIdByEmail(email: string): Promise<number | null> {
    let user = await this.usersRepository.findOne({
      where: { email },
    });
    if (!user) {
      user = this.usersRepository.create({
        email,
        firstName: 'Default', // Provide defaults for required fields
        lastName: null,
        isActive: true,
      });
      user = await this.usersRepository.save(user);
    }
    return user?.id || null; // Return the user's ID or null if not found
  }

  findAll(): Promise<User[]> {
    return this.usersRepository.find();
  }

  findOne(id: number): Promise<User> {
    return this.usersRepository.findOne({ where: { id } });
  }

  async remove(id: number): Promise<void> {
    await this.usersRepository.delete(id);
  }

  create(createUserDto: CreateUserDto) {
    return this.usersRepository.save(createUserDto);
  }

  update(id: number, updateUserDto: UpdateUserDto) {
    return this.usersRepository.update(id, updateUserDto);
  }
}
