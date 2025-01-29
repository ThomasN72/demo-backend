import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get('/healthcheck')
  checkApplicationStatus(): string {
    return this.appService.isAppHealthy()
      ? 'Application is running.'
      : 'Error! Application is not healthy.';
  }

  @Get('/readiness')
  checkDatabaseConnection(): string {
    return this.appService.isDatabaseReady()
      ? 'Database is connected.'
      : 'Error! Unable to connect to database.';
  }
}
