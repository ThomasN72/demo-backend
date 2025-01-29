import { Module } from '@nestjs/common';
import { UserService } from './service/instance.service';
import { UserResolver } from './resolver/instance.resolver';
import { TypeOrmModule } from '@nestjs/typeorm';
import {
  UserController,
  UsersController,
} from './controller/instance.controller';
import { User } from './entity/instance.entity';

@Module({
  // Reference: https://docs.nestjs.com/techniques/database
  // This module uses the forFeature() method to define which repositories are registered in the current scope.
  // With that in place, we can inject the UsersRepository into the UserService using the @InjectRepository() decorator:
  imports: [TypeOrmModule.forFeature([User])],
  controllers: [UserController, UsersController],
  providers: [UserService, UserResolver],
  // If you want to use the repository outside of the module which imports TypeOrmModule.forFeature,
  // you'll need to re-export the providers generated by it. You can do this by exporting the whole module.
  exports: [UserService, TypeOrmModule],
})
export class UserModule {}
