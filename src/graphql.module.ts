// Graphql Configuration
import { Module } from '@nestjs/common';
import { GraphQLModule } from '@nestjs/graphql';
import { ApolloDriver, ApolloDriverConfig } from '@nestjs/apollo';

@Module({
  imports: [
    GraphQLModule.forRoot<ApolloDriverConfig>({
      driver: ApolloDriver,
      debug: process.env.NODE_ENV === 'production' ? false : true,
      playground: process.env.NODE_ENV === 'production' ? false : true,
      autoSchemaFile: true,
    }),
  ],
})
export class GraphQLSetupModule {}
