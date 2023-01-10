import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/models/graphs_model.dart';
import 'package:lgpb_compliance/models/historic_model.dart';
import 'package:lgpb_compliance/models/user_model.dart';
import 'package:lgpb_compliance/repository/admin_repository.dart';
import 'package:lgpb_compliance/stores/user_manager_store.dart';
import 'package:mobx/mobx.dart';

part 'admin_store.g.dart';

class AdminStore = _AdminStore with _$AdminStore;

abstract class _AdminStore with Store {
  @observable
  UserManagerStore userManager = GetIt.I<UserManagerStore>();

  @observable
  bool loadingAdminPage = false;

  @observable
  String name = '';

  @action
  void setName(String value) {
    name = value;
  }

  ObservableList<UserModel> listUser = ObservableList<UserModel>();
  ObservableList<UserModel> auxListUser = ObservableList<UserModel>();
  ObservableList<HistoricModel> listHistoric = ObservableList<HistoricModel>();

  @observable
  GraphicsModel? graphicsModel;

  @observable
  String dropdownValue = 'Selecione um filtro';

  @action
  void onChangeDropDown(String? value) {
    dropdownValue = value!;
    switch (dropdownValue) {
      case 'Score crescente':
        listHistoric.sort((a, b) {
          return a.score.compareTo(b.score);
        });
        break;
      case 'Score decrescente':
        listHistoric.sort((a, b) {
          return b.score.compareTo(a.score);
        });
        break;
      case 'Data crescente':
        listHistoric.sort((a, b) {
          return a.createdAt.compareTo(b.createdAt);
        });
        break;
      case 'Data decrescente':
        listHistoric.sort((a, b) {
          return b.createdAt.compareTo(a.createdAt);
        });
        break;
    }
  }

  @action
  void filterUser(String value) {
    loadingAdminPage = true;
    listUser.clear();
    listUser.addAll(auxListUser);
    listUser.removeWhere(
        (user) => !user.name!.toLowerCase().contains(value.toLowerCase()));
    loadingAdminPage = false;
  }

  @action
  Future<void> getUsers() async {
    try {
      loadingAdminPage = true;
      final result =
          await AdminRepository().getUsers(kTokenUser: userManager.userToken);
      listUser.clear();
      auxListUser.clear();
      listUser.addAll(result);
      auxListUser.addAll(result);
      loadingAdminPage = false;
    } catch (error) {
      print("AdminStore.getUsers ERROR: $error}");
      return Future.error('Error');
    }
  }

  @action
  Future<void> getHistoricByUserId({required String userId}) async {
    try {
      loadingAdminPage = true;
      dropdownValue = 'Selecione um filtro';
      final result = await AdminRepository().getHistoricCompliance(
          kTokenUser: userManager.userToken, userId: userId);
      listHistoric.clear();
      listHistoric.addAll(result);
      loadingAdminPage = false;
    } catch (error) {
      print("AdminStore.getHistoricByUserId ERROR: $error}");
      return Future.error('Error');
    }
  }

  @action
  Future<void> getGraphic() async {
    try {
      loadingAdminPage = true;
      graphicsModel = await AdminRepository().getInfoGraphic(
        kTokenUser: userManager.userToken,
      );
      loadingAdminPage = false;
    } catch (error) {
      print("AdminStore.getGraphic ERROR: $error}");
      return Future.error('Error');
    }
  }
}
