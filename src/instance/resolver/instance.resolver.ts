import { NotFoundException } from '@nestjs/common';
import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { Instance } from '../entity/instance.entity';
import { InstanceService } from '../service/instance.service';
import { CreateInstanceDto } from '../dto/create-instance.dto';
import { UpdateInstanceDto } from '../dto/update-instance.dto';
import { Int } from '@nestjs/graphql';
import { CpuUsage } from '../entity/cpu-usage.entity';
import { GpuUsage } from '../entity/gpu-usage.entity';
import { MemoryUsage } from '../entity/memory-usage.entity';
import { DiskUsage } from '../entity/disk-usage.entity';

@Resolver((of) => Instance)
export class InstanceResolver {
  constructor(private readonly instanceService: InstanceService) {}

  @Query((returns) => Instance)
  instance(@Args('id', { type: () => Int }) id: number): Promise<Instance> {
    const instance = this.instanceService.findOne(id);
    if (!instance) {
      throw new NotFoundException(id);
    }
    return instance;
  }

  @Query(() => [Instance], { name: 'instances' })
  findAll(): Promise<Instance[]> {
    return this.instanceService.findAll();
  }

  @Query(() => Instance, { name: 'instance' })
  findOne(@Args('id', { type: () => Int }) id: number): Promise<Instance> {
    return this.instanceService.findOne(id);
  }

  @Mutation(() => Instance)
  createInstance(@Args('input') input: CreateInstanceDto): Promise<Instance> {
    return this.instanceService.create(input);
  }

  @Mutation(() => Instance)
  updateInstance(
    @Args('id', { type: () => Int }) id: number,
    @Args('input') input: UpdateInstanceDto,
  ): Promise<Instance> {
    return this.instanceService.update(id, input);
  }

  @Mutation(() => Boolean)
  deleteInstance(
    @Args('id', { type: () => Int }) id: number,
  ): Promise<boolean> {
    return this.instanceService.remove(id);
  }

  // Dynamic Data Queries
  @Query(() => [CpuUsage])
  getCpuUsage(
    @Args('instanceId', { type: () => Int }) instanceId: number,
  ): Promise<CpuUsage[]> {
    return this.instanceService.getCpuUsage(instanceId);
  }

  @Query(() => [GpuUsage])
  getGpuUsage(
    @Args('instanceId', { type: () => Int }) instanceId: number,
  ): Promise<GpuUsage[]> {
    return this.instanceService.getGpuUsage(instanceId);
  }

  @Query(() => [MemoryUsage])
  getMemoryUsage(
    @Args('instanceId', { type: () => Int }) instanceId: number,
  ): Promise<MemoryUsage[]> {
    return this.instanceService.getMemoryUsage(instanceId);
  }

  @Query(() => [DiskUsage])
  getDiskUsage(
    @Args('instanceId', { type: () => Int }) instanceId: number,
  ): Promise<DiskUsage[]> {
    return this.instanceService.getDiskUsage(instanceId);
  }
}
