import 'package:flutter/material.dart';
import 'package:lgpb_compliance/components/custom_button.dart';
import 'package:lgpb_compliance/components/custom_text.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class ForgotPasswordComponent extends StatelessWidget {
  const ForgotPasswordComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWrapper.of(context).isMobile ||
        MediaQuery.of(context).size.width == 450;
    return Container(
      width: isMobile ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.65,
      padding:
      const EdgeInsets.only(left: 50, right: 50, top: 50, bottom: 50),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            child: Image.asset(
              'images/logo.png',
            ),
          ),
          const SizedBox(height: 60),
          ConstrainedBox(
            constraints: const BoxConstraints(
                maxWidth: 600
            ),
            child: Column(
              children: [
                const CustomText(text: 'Esqueci a senha', fontSize: 25),
                const SizedBox(height: 20),
                // const CustomTextFormField(
                //   isPasswordType: false,
                //   icon: Icons.email,
                //   text: 'Digite seu Email',
                //   textInputType: TextInputType.emailAddress,
                //   enabled: true,
                // ),
                const SizedBox(height: 50),
                CustomButton(text: 'Confirmar', onPressed: (){
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => BasePage()));
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
