import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:store_app_connectx/commons/Styles/widgets/login_SignUp/DividerForm.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

import '../../../../../commons/Styles/widgets/login_SignUp/SocialButton.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../Widgets/SignUpform.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(MySizes.defaultSpace),
          child: Column(
            children: [
              const SizedBox(
                height: MySizes.spaceBtwItems*3,
              ),
              Text(
                MyTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              //form
              const MySignUpForm(),
              //divider
              DividerForm(textDivider: MyTexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
