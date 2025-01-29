import { NotFoundException } from '@nestjs/common';
import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { User } from '../entity/instance.entity';
import { UserService } from '../service/instance.service';
import { CreateUserDto } from '../dto/create-instance.dto';
import { UpdateUserDto } from '../dto/update-instance.dto';
import { Int } from '@nestjs/graphql';

@Resolver((of) => User)
export class UserResolver {
  constructor(private readonly usersService: UserService) {}

  @Query((returns) => User)
  user(@Args('id', { type: () => Int }) id: number): Promise<User> {
    const user = this.usersService.findOne(id);
    if (!user) {
      throw new NotFoundException(id);
    }
    return user;
  }

  @Query((returns) => [User])
  users(): Promise<User[]> {
    return this.usersService.findAll();
  }

  @Mutation((returns) => User)
  async addUser(
    @Args('createUserDto') createUserDto: CreateUserDto,
  ): Promise<User> {
    return await this.usersService.create(createUserDto);
  }

  // @Mutation((returns) => User)
  // async updateUser(
  //   @Args({ name: 'id', type: () => Int }) updateUserDto: UpdateUserDto,
  // ) {
  //   console.log('updateUserDto', updateUserDto);
  //   // console.log('id', id);
  //   return;
  //   // return this.postsService.upvoteById({ id: postId });
  // }
}
