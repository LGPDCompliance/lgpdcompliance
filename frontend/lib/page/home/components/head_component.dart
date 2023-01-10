import 'package:flutter/material.dart';
import 'package:lgpb_compliance/components/custom_button.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:lgpb_compliance/page/auth/signin_page.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class HeadComponent extends StatelessWidget {
  final VoidCallback? onPressed;

  const HeadComponent({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWrapper.of(context).isMobile ||
        MediaQuery.of(context).size.width == 450;
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 600,
      ),
      child: Container(
        padding: const EdgeInsets.all(40),
        height: MediaQuery.of(context).size.height,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: isMobile ? 200 : 300,
                child: Image.asset(
                  'images/logo.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: 500,
                child: const CustomText(
                  text:
                      'Educando desenvolvedores para uma internet mais transparente e segura!',
                  fontSize: 25,
                  textAlign: TextAlign.center,
                ),
                margin: const EdgeInsets.only(top: 30, bottom: 40),
              ),
              SizedBox(
                width: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomButton(
                        text: 'Saiba mais',
                        onPressed: onPressed,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: CustomButton(
                        text: 'Entrar',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInPage()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
