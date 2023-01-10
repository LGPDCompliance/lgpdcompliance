import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/page/admin/admin_page.dart';
import 'package:lgpb_compliance/page/admin/historic_admin_page.dart';
import 'package:lgpb_compliance/page/base/components/custom_drawer.dart';
import 'package:lgpb_compliance/page/base/components/head_top.dart';
import 'package:lgpb_compliance/page/edit_profile/edit_profile.dart';
import 'package:lgpb_compliance/page/historic/detail_historic_page.dart';
import 'package:lgpb_compliance/page/historic/historic_page.dart';
import 'package:lgpb_compliance/page/lgpd/lgpd_page.dart';
import 'package:lgpb_compliance/page/lgpd_admin/lgpd_admin_page.dart';
import 'package:lgpb_compliance/page/quiz/quiz_page.dart';
import 'package:lgpb_compliance/page/quiz/result_quiz_page.dart';
import 'package:lgpb_compliance/page/quiz/start_quiz_page.dart';
import 'package:lgpb_compliance/stores/admin_store.dart';
import 'package:lgpb_compliance/stores/page_store.dart';
import 'package:lgpb_compliance/stores/user_manager_store.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  final PageStore pageStore = GetIt.I<PageStore>();

  final UserManagerStore userManagerStore = GetIt.I<UserManagerStore>();
  final AdminStore adminStore = GetIt.I<AdminStore>();


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      userManagerStore.isUser ? pageStore.setPage(0) : pageStore.setPage(9);
      adminStore.getGraphic();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWrapper.of(context).isMobile ||
        MediaQuery.of(context).size.width == 450;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: isMobile
          ? AppBar(
              iconTheme: const IconThemeData(
                color: primaryColor,
              ),
              elevation: 0,
              backgroundColor: backgroundColor,
              title: HeadTop(),
            )
          : null,
      drawer: isMobile ? CustomDrawer() : null,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isMobile) ...[
            CustomDrawer(),
          ],
          Expanded(
            child: Column(
              children: <Widget>[
                if (!isMobile) ...[
                  HeadTop(),
                ],
                Expanded(
                  child: PageView(
                    controller: pageStore.pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      LGPDPage(),
                      EditProfile(),
                      StartQuizPage(),
                      QuizPage(),
                      ResultQuizPage(),
                      HistoricPage(),
                      DetailHistoricPage(),
                      AdminPage(),
                      HistoricAdminPage(),
                      LGPDAdminPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
