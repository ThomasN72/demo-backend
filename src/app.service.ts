import { Injectable } from '@nestjs/common';
import { Repository, getManager } from 'typeorm';

@Injectable()
export class AppService {
  isAppHealthy(): boolean {
    return true;
  }
  isDatabaseReady(): boolean {
    const manager = getManager();
    const isConnected = manager?.connection?.isConnected ? true : false;

    return isConnected;
  }
}
