import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateInstanceDto } from '../dto/create-instance.dto';
import { UpdateInstanceDto } from '../dto/update-instance.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Instance } from '../entity/instance.entity';
import { CpuUsage } from '../entity/cpu-usage.entity';
import { GpuUsage } from '../entity/gpu-usage.entity';
import { MemoryUsage } from '../entity/memory-usage.entity';
import { DiskUsage } from '../entity/disk-usage.entity';
import { Server } from 'socket.io';
import { InstanceGateway } from '../gateway/instance.gateway';

@Injectable()
export class InstanceService {
  private io: Server;

  constructor(
    @InjectRepository(Instance)
    private instanceRepository: Repository<Instance>,

    @InjectRepository(CpuUsage)
    private cpuUsageRepository: Repository<CpuUsage>,

    @InjectRepository(GpuUsage)
    private gpuUsageRepository: Repository<GpuUsage>,

    @InjectRepository(MemoryUsage)
    private memoryUsageRepository: Repository<MemoryUsage>,

    @InjectRepository(DiskUsage)
    private diskUsageRepository: Repository<DiskUsage>,

    private readonly instanceGateway: InstanceGateway, // Inject the gateway
  ) {}

  async create(createInstanceDto: CreateInstanceDto): Promise<Instance> {
    const instance = this.instanceRepository.create(createInstanceDto);
    return this.instanceRepository.save(instance);
  }

  async findAll(): Promise<Instance[]> {
    return this.instanceRepository.find();
  }

  async findOne(id: number): Promise<Instance> {
    const instance = await this.instanceRepository.findOne({ where: { id } });
    if (!instance) {
      throw new NotFoundException(`Instance with ID ${id} not found`);
    }
    return instance;
  }

  async update(
    id: number,
    updateInstanceDto: UpdateInstanceDto,
  ): Promise<Instance> {
    await this.instanceRepository.update(id, updateInstanceDto);
    return this.findOne(id);
  }

  async remove(id: number): Promise<boolean> {
    const result = await this.instanceRepository.delete(id);
    return result.affected > 0;
  }

  async getCpuUsage(instanceId: number): Promise<CpuUsage[]> {
    return this.cpuUsageRepository.find({
      where: { instance: { id: instanceId } },
      order: { timestamp: 'ASC' },
    });
  }

  async getGpuUsage(instanceId: number): Promise<GpuUsage[]> {
    return this.gpuUsageRepository.find({
      where: { instance: { id: instanceId } },
      order: { timestamp: 'ASC' },
    });
  }

  async getMemoryUsage(instanceId: number): Promise<MemoryUsage[]> {
    return this.memoryUsageRepository.find({
      where: { instance: { id: instanceId } },
      order: { timestamp: 'ASC' },
    });
  }

  async getDiskUsage(instanceId: number): Promise<DiskUsage[]> {
    return this.diskUsageRepository.find({
      where: { instance: { id: instanceId } },
      order: { timestamp: 'ASC' },
    });
  }

  async onModuleInit() {
    // Optionally seed historical data if needed:
    // await this.seedHistoricalData();
    // Start dynamic measurement generation
    this.startCpuDataGeneration();
    this.startGpuDataGeneration();
    this.startMemoryDataGeneration();
    this.startDiskDataGeneration();
  }
  // Dynamic data generation functions
  startCpuDataGeneration() {
    setInterval(async () => {
      const instances = await this.instanceRepository.find();
      for (const instance of instances) {
        const usagePercentage = parseFloat((Math.random() * 100).toFixed(2));
        const measurement = await this.cpuUsageRepository.save({
          instance,
          usagePercentage,
          timestamp: new Date(),
        });
        this.instanceGateway.server
          .to(`instance_${instance.id}`)
          .emit('cpuUpdate', {
            usagePercentage,
            timestamp: measurement.timestamp,
          });
      }
    }, 5000); // every 1 second for CPU data
  }

  startGpuDataGeneration() {
    setInterval(async () => {
      const instances = await this.instanceRepository.find();
      for (const instance of instances) {
        const memoryUtilization = parseFloat((Math.random() * 100).toFixed(2));
        const smUtilization = parseFloat((Math.random() * 100).toFixed(2));
        const measurement = await this.gpuUsageRepository.save({
          instance,
          memoryUtilization,
          smUtilization,
          timestamp: new Date(),
        });
        this.instanceGateway.server
          .to(`instance_${instance.id}`)
          .emit('gpuUpdate', {
            memoryUtilization,
            smUtilization,
            timestamp: measurement.timestamp,
          });
      }
    }, 100); // every 100ms for GPU data
  }

  startMemoryDataGeneration() {
    setInterval(async () => {
      const instances = await this.instanceRepository.find();
      for (const instance of instances) {
        const usedMemoryGB = parseFloat((Math.random() * 64).toFixed(2));
        const measurement = await this.memoryUsageRepository.save({
          instance,
          usedMemoryGB,
          timestamp: new Date(),
        });
        this.instanceGateway.server
          .to(`instance_${instance.id}`)
          .emit('memoryUpdate', {
            usedMemoryGB,
            timestamp: measurement.timestamp,
          });
      }
    }, 10000); // every 10,000ms for Memory data
  }

  startDiskDataGeneration() {
    setInterval(async () => {
      const instances = await this.instanceRepository.find();
      for (const instance of instances) {
        const usedDiskTB = parseFloat((Math.random() * 20).toFixed(2));
        const measurement = await this.diskUsageRepository.save({
          instance,
          usedDiskTB,
          timestamp: new Date(),
        });
        this.instanceGateway.server
          .to(`instance_${instance.id}`)
          .emit('diskUpdate', {
            usedDiskTB,
            timestamp: measurement.timestamp,
          });
      }
    }, 15000); // every 15,000ms for Disk data
  }
}
