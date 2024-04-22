import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_connectx/commons/Styles/widgets/login_SignUp/sucessScrenn/sucessScreen.dart';
import 'package:store_app_connectx/utils/constants/image_strings.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/text_strings.dart';
import 'LoginScreen.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsetsDirectional.all(MySizes.defaultSpace),
            child: Column(
              children: [
                //image
                Image(
                  image: const AssetImage(MyImages.emailVerfication),
                  width: MyHelperFunctions.screenWidth() * 0.6,
                ),
                const SizedBox(
                  height: MySizes.spaceBtwSections,
                ),
                //title &sub
                Text(
                  MyTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: MySizes.spaceBtwItems,
                ),
                Text(
                  "mofsifjsofsf.com",
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                Text(
                  MyTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: MySizes.spaceBtwItems,
                ),
                //button
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => Get.to(
                              () => SucessScreen(
                                image: MyImages.sucessCheck,
                                title: MyTexts.yourAccountCreatedTitle,
                                subtitle: MyTexts.yourAccountCreatedTitle,
                                onpressed: () => Get.to(
                                  () => const LoginScreen(),
                                ),
                              ),
                            ),
                        child: const Text(MyTexts.Continue))),
                const SizedBox(
                  height: MySizes.spaceBtwItems,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {}, child: const Text(MyTexts.resendEmail)),
                ),
              ],
            )),
      ),
    );
  }
}
