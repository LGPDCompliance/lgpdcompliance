import Database from '../database';
import {UpdateUserData, UserRegisterQuery} from '../types';

interface UserData {
  name: string
  email: string
}

interface UserAuth {
  email: string,
  password: string
}

class UserRegisterUtil {
  static async registerUser(user: UserData, userAuth: UserAuth): Promise<UserRegisterQuery | null> {
    const database = Database.getInstance();
    try {
      const userRegister = await database.userRegister.create({data: {
        user: {create: user},
        authentication: {create: userAuth},
      }});
      return userRegister;
    } catch (err) {
      console.log(err);
    }
    return null;
  }

  static async updateUserById(userRegisterId: string, userData: UpdateUserData): Promise<UserRegisterQuery> {
    const database = Database.getInstance();
    try {
      const {email, name} = userData;
      const user = await database.userRegister.update({
        where: {id: userRegisterId},
        data: {
          user: {update: {name, email}},
          authentication: {update: {email}},
        },
      });

      return user;
    } catch (err) {
      console.log(err);
    }
    return null;
  }
}

export default UserRegisterUtil;
