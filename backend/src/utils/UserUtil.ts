import Database from '../database';
import {User} from '@prisma/client';

class UserUtil {
  static async getUserByEmail(email: string): Promise<User | null> {
    const database = Database.getInstance();

    try {
      const user = await database.user.findFirst({where: {email}});
      return user;
    } catch (err) {
      console.log(err);
    }
    return null;
  }

  static async getUserById(id: string): Promise<User | null> {
    const database = Database.getInstance();
    try {
      const user = await database.user.findFirst({where: {id}});
      return user;
    } catch (err) {
      console.log(err);
    }
    return null;
  }

  static async getUsers(): Promise<User[] | null> {
    const database = Database.getInstance();
    try {
      const users = await database.user.findMany({
        include: {
          userRegister: true,
        },
      });
      return users;
    } catch (err) {
      console.log(err);
    }
    return null;
  }

  static async getDataUser(): Promise<User[] | null> {
    const database = Database.getInstance();
    try {
      const users = await database.user.findMany();
      return users;
    } catch (err) {
      console.log(err);
    }
    return null;
  }
}

export default UserUtil;
