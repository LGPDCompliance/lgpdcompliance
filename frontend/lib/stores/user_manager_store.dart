import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/models/user_model.dart';
import 'package:lgpb_compliance/repository/admin_repository.dart';
import 'package:lgpb_compliance/stores/news_store.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_manager_store.g.dart';

class UserManagerStore = _UserManagerStore with _$UserManagerStore;

abstract class _UserManagerStore with Store {
  _UserManagerStore() {
    autorun((_) async {
      await loadCurrentUser();
    });
  }

  @observable
  bool isLogged = false;

  @observable
  bool loading = false;

  @computed
  bool get isLoading => loading;

  @observable
  CurrentUser? userManager;

  @observable
  UserModel user = const UserModel();

  @action
  Future<void> loadCurrentUser() async {
    loading = true;
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? accessToken = prefs.getString('accessToken');
    final String? id = prefs.getString('id');

    if (accessToken != null && id != null)  {
      try {
        UserModel userModel = await AdminRepository().getUserByID(kTokenUser: accessToken, userId: id);
        setCurrentUser(CurrentUser(currentUser: userModel, accessToken: accessToken, refreshToken: ''));
        isLogged = true;
        loading = false;
      } catch (e) {
        logout();
        isLogged = false;
        loading = false;
      }
    } else {
      logout();
      isLogged = false;
      loading = false;
    }
    loading = false;
  }

  @action
  void setCurrentUser(CurrentUser value) {
    userManager = value;
    user = value.currentUser;
    GetIt.I<NewsStore>().getNewsAtLGPD();
  }

  @action
  Future<void> logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  @action
  void setUser(UserModel value) => user = value;

  @computed
  String get userToken => userManager!.accessToken;

  @computed
  bool get isUser => user.role == "USER" ? true : false;
}