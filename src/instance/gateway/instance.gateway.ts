// instance.gateway.ts
import {
  WebSocketGateway,
  WebSocketServer,
  SubscribeMessage,
} from '@nestjs/websockets';
import { Server } from 'socket.io';

@WebSocketGateway({
  cors: {
    origin: 'http://localhost:3000', // adjust as needed
  },
})
export class InstanceGateway {
  @WebSocketServer()
  server: Server;
  // Listen for "subscribe" events from clients
  @SubscribeMessage('subscribe')
  handleSubscribe(client: any, payload: { instanceId: number }) {
    console.log(
      `Client ${client.id} subscribing to instance_${payload.instanceId}`,
    );
    client.join(`instance_${payload.instanceId}`);
  }
}
