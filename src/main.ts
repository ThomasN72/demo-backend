import * as dotenv from 'dotenv';
dotenv.config({ path: __dirname + '/.env' });

import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { SwaggerModule, DocumentBuilder } from '@nestjs/swagger';
import { ValidationPipe } from '@nestjs/common';
import * as bodyParser from 'body-parser';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.useGlobalPipes(
    new ValidationPipe({
      skipMissingProperties: true, // Skip strict validation
    }),
  );
  app.enableCors({
    origin: [
      'chrome-extension://eikngahlpfjjacbagijimfkbcnbhladh', // Replace with your extension ID
      'chrome-extension://gcnbhcabeecejdkmmeaggilechmbhlcc', // Replace with your extension ID
      'chrome-extension://hidfdbemcmkefakajhglojgljfhecglj', // Replace with your extension ID
    ],
    methods: 'GET,POST,OPTIONS', // Allow these HTTP methods
    allowedHeaders: 'Content-Type, Authorization', // Allow these headers
    credentials: true, // Include credentials if needed
  });

  // Swagger configuration.
  const config = new DocumentBuilder()
    .setTitle('Swagger API Documentation')
    .setDescription('API description')
    .setVersion('1.0')
    .build();
  const document = SwaggerModule.createDocument(app, config);

  SwaggerModule.setup('api', app, document);
  app.use(bodyParser.json({ limit: '10mb' }));
  app.use(bodyParser.urlencoded({ extended: true, limit: '10mb' }));

  await app.listen(3001);
}
bootstrap();
