import 'package:flutter/material.dart';
import 'package:lgpb_compliance/page/auth/components/forgotpassword_component.dart';
import 'package:lgpb_compliance/page/auth/components/left_component.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWrapper.of(context).isMobile ||
        MediaQuery.of(context).size.width == 450;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Row(
              children: [
                Visibility(
                    visible: isMobile ? false : true,
                    child: const LeftComponent()),
                const ForgotPasswordComponent(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
