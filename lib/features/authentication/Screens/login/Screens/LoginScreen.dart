import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:store_app_connectx/commons/Styles/space_Style.dart';
import 'package:store_app_connectx/commons/Styles/widgets/login_SignUp/SocialButton.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/constants/text_strings.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

import '../../../../../commons/Styles/widgets/login_SignUp/DividerForm.dart';
import '../Widgets/HeaderLogin.dart';
import '../Widgets/formFieldLogin.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: MySpaceStyle.paddingWithAppBarHight,
            child: Column(

              children: [
                const SizedBox(
                  height: MySizes.spaceBtwItems*3,
                ),

                HeaderLogin(dark: dark),
                const LoginForm(),
                DividerForm(textDivider: MyTexts.orSignInWith.capitalize!),
                const SizedBox(
                  height: MySizes.spaceBtwItems,
                ),
                const SocialButton()
              ],
            )),
      ),
    );
  }
}
