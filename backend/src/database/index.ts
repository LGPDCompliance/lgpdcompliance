import {PrismaClient} from '@prisma/client';

class Database {
  private static instance: PrismaClient;

  private constructor() {}

  public static getInstance(): PrismaClient {
    if (this.instance) {
      return this.instance;
    }

    return new PrismaClient({
      log: ['info', 'error', 'warn'],
    });
  }
}

export default Database;
