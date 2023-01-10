import {Authentication} from '@prisma/client';
import bcrypt from 'bcrypt';
import Database from '../database';


class AuthUtil {
  static async getAuthenticationByEmail(email: string): Promise<Authentication | null> {
    const database = Database.getInstance();
    try {
      const authentication = await database.authentication.findFirst({
        where: {email},
      });
      return authentication;
    } catch (err) {
      console.log(err);
    }
    return null;
  }

  static async authenticateUser(userAuth: Authentication, password: string): Promise<boolean> {
    const isAuthenticated = await bcrypt.compare(password, userAuth.password);
    return isAuthenticated;
  }

  static async encrypt(password: string): Promise<string> {
    return await bcrypt.hash(password, 10);
  }

  static async createAuthentication(email: string, password: string) {
    const encrypt = await this.encrypt(password);

    const authentication = {
      email: email,
      password: encrypt,
    };

    return authentication;
  }
}

export default AuthUtil;
