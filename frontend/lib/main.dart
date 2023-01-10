import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/page/base/base_%20page.dart';
import 'package:lgpb_compliance/page/home/home_page.dart';
import 'package:lgpb_compliance/stores/admin_store.dart';
import 'package:lgpb_compliance/stores/compliance_store.dart';
import 'package:lgpb_compliance/stores/historic_store.dart';
import 'package:lgpb_compliance/stores/news_store.dart';
import 'package:lgpb_compliance/stores/page_store.dart';
import 'package:lgpb_compliance/stores/user_manager_store.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  setupLocators();
  runApp(MyApp());
}

void setupLocators() {
  GetIt.I.registerSingleton(PageStore());
  GetIt.I.registerSingleton(UserManagerStore());
  GetIt.I.registerSingleton(ComplianceStore());
  GetIt.I.registerSingleton(AdminStore());
  GetIt.I.registerSingleton(HistoricStore());
  GetIt.I.registerSingleton(NewsStore());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final UserManagerStore userManagerStore = GetIt.I<UserManagerStore>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LGPD Compliance',
      theme: ThemeData(primaryColor: backgroundColor),
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        defaultScale: true,
        minWidth: 450,
        defaultName: MOBILE,
        breakpoints: [
          const ResponsiveBreakpoint.autoScale(450, name: MOBILE),
          const ResponsiveBreakpoint.resize(700, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        ],
      ),
      home: Observer(
        builder: (_) {
          if (userManagerStore.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return userManagerStore.isLogged ? const BasePage() : HomePage();
          }
        },
      ),
    );
  }
}
