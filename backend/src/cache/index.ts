import {CacheContainer} from 'node-ts-cache';
import {MemoryStorage} from 'node-ts-cache-storage-memory';

export const cache = new CacheContainer(new MemoryStorage());
