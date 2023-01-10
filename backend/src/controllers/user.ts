import {Request, Response} from 'express';
import UserUtil from '../utils/UserUtil';
import {UpdateUserData, UserQuery} from '../types';
import ValidatorsUtil from '../utils/ValidatorsUtil';
import UserRegisterUtil from '../utils/UserRegisterUtil';
import AuthUtil from '../utils/AuthUtil';


class UserController {
  static async updateUser(request:Request, response:Response): Promise<Response> {
    try {
      const {userId} = request.params;
      const {name, email} = request.body;

      const userUpdate: UpdateUserData = {name, email};
      const user: UserQuery = await UserUtil.getUserById(userId);

      if (user) {
        const {userRegisterId} = user;
        const updateRegister = await UserRegisterUtil.updateUserById(userRegisterId, userUpdate);

        if (updateRegister) {
          const user = await UserUtil.getUserById(userId);
          if (user) {
            return response.status(200).json(user);
          }
        }
      }
    } catch (err) {
      console.log(err);
    }

    return response.status(400).json({
      message: 'Não foi possível atualizar o usuário',
    });
  }

  static async getUserById(request: Request, response: Response) {
    const {userId} = request.params;

    try {
      if (userId) {
        const user = await UserUtil.getUserById(userId);


        if (user) {
          const {id, name, email, role} = user;
          return response.status(200).json({id, name, email, role});
        }
      }
    } catch (err) {
      console.log(err);
    }

    return response.status(400).json({message: 'Erro ao buscar usuário.'});
  }


  static async registerUser(request: Request, response: Response) {
    const {name, email, password} = request.body;

    const errors = ValidatorsUtil.validate(request);
    if (!errors.isEmpty()) {
      return response.status(400).json({errors: errors.array()});
    }

    try {
      const isUserAlreadyExist = await UserUtil.getUserByEmail(email);

      if (isUserAlreadyExist) {
        return response.status(409).json({
          message: 'O usuário já está cadastrado',
        });
      }

      const authentication = await AuthUtil.createAuthentication(email, password);

      if (authentication) {
        const user = {name, email};
        const userRegister = await UserRegisterUtil.registerUser(user, authentication);

        if (userRegister) {
          return response.status(200).json({message: 'Usuário cadastrado com sucesso'});
        }
      }
    } catch (err) {
      console.log(err);
    }
    return response.status(400).json({message: 'Não foi possível criar usuário'});
  };

  static async getUsers(request: Request, response: Response) {
    try {
      const users = await UserUtil.getUsers();
      return response.status(200).json(users);
    } catch (err) {
      console.log(err);
    }
    return response.status(400).json({message: 'Ocorreu um erro ao buscar usuários.'});
  };
}

export default UserController;
