import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/page/base/components/item_drawer.dart';
import 'package:lgpb_compliance/stores/page_store.dart';
import 'package:lgpb_compliance/stores/user_manager_store.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({Key? key}) : super(key: key);

  final PageStore pageStore = GetIt.I<PageStore>();
  final UserManagerStore userManagerStore = GetIt.I<UserManagerStore>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundColor,
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60, top: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Observer(builder: (_) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 100,
                          child: Image.asset(
                            'images/logo.png',
                          ),
                        ),
                        const SizedBox(height: 50),
                        ItemDrawer(
                          title: 'LGPD',
                          icon: Icons.home_outlined,
                          selected: pageStore.page == 0 || pageStore.page == 9 ? true : false,
                          page: userManagerStore.isUser ? 0 : 9,
                        ),
                        Visibility(
                          visible: !userManagerStore.isUser,
                            child: ItemDrawer(
                              title: 'Usuários',
                              icon: Icons.person_outline_outlined,
                              selected: pageStore.selectPage(7) || pageStore.selectPage(8),
                              page: 7,
                            ),
                        ),
                        Visibility(
                          visible: userManagerStore.isUser,
                          child: ItemDrawer(
                            title: 'Perfil',
                            icon: Icons.person_outline_outlined,
                            selected: pageStore.selectPage(1),
                            page: 1,
                          ),
                        ),
                        Visibility(
                          visible: userManagerStore.isUser,
                          child: ItemDrawer(
                            title: 'Quiz',
                            icon: Icons.quiz_outlined,
                            selected: pageStore.selectPage(2) || pageStore.selectPage(3) || pageStore.selectPage(4),
                            page: 2,
                          ),
                        ),
                        Visibility(
                          visible: userManagerStore.isUser,
                          child: ItemDrawer(
                            title: 'Histórico',
                            icon: Icons.history_outlined,
                            selected: pageStore.selectPage(5) || pageStore.selectPage(6),
                            page: 5,
                          ),
                        ),
                      ],
                    );
                  }),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                              height: 120,
                              width: 120,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade300)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'images/person.png',
                                  scale: 3,
                                ),
                              )),
                        ),
                        const SizedBox(height: 20),
                        Observer(builder: (_){
                          return CustomText(
                            text: userManagerStore.user.name!,
                            textAlign: TextAlign.center,
                            fontSize: 15,
                          );
                        })
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
