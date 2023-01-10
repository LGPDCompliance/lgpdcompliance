import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'page_store.g.dart';

class PageStore = _PageStore with _$PageStore;

abstract class _PageStore with Store {
  @observable
  PageController pageController = PageController();

  @observable
  int page = 0;

  @observable
  String namePage = 'LGPD';

  @action
  void setPage(int value) {
    page = value;
    pageController.jumpToPage(page);

    if (page == 0  || page == 9) {
      namePage = 'LGPD';
    } else if (page == 1) {
      namePage = 'Editar Perfil';
    } else if (page == 2 || page == 3 || page == 4) {
      namePage = 'Quiz';
    } else if (page == 5 || page == 6) {
      namePage = 'Histórico';
    } else if (page == 7 || page == 8) {
      namePage = 'Usuários';
    }
  }

  @action
  bool selectPage(int value) {
    if (value == page) {
      return true;
    } else {
      return false;
    }
  }
}
