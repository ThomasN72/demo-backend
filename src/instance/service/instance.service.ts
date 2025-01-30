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

@Injectable()
export class InstanceService {
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
      order: { timestamp: 'DESC' },
    });
  }

  async getGpuUsage(instanceId: number): Promise<GpuUsage[]> {
    return this.gpuUsageRepository.find({
      where: { instance: { id: instanceId } },
      order: { timestamp: 'DESC' },
    });
  }

  async getMemoryUsage(instanceId: number): Promise<MemoryUsage[]> {
    return this.memoryUsageRepository.find({
      where: { instance: { id: instanceId } },
      order: { timestamp: 'DESC' },
    });
  }

  async getDiskUsage(instanceId: number): Promise<DiskUsage[]> {
    return this.diskUsageRepository.find({
      where: { instance: { id: instanceId } },
      order: { timestamp: 'DESC' },
    });
  }
}
