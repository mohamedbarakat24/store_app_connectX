import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_connectx/utils/constants/image_strings.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          children: [
            //image
            Image(image:  const AssetImage(MyImages.emailVerfication),width: MyHelperFunctions.screenWidth()*0.6,height:MyHelperFunctions.screenHeight()*0.4 ),
            const SizedBox(
              height: MySizes.spaceBtwSections,
            ),
            //title &sub
            Text(MyTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            const SizedBox(
              height: MySizes.spaceBtwItems,
            ),

            Text(MyTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
            const SizedBox(
              height: MySizes.spaceBtwItems,
            ),
            //button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},child:  const Text(MyTexts.done)),
            ),
            const SizedBox(
              height: MySizes.spaceBtwItems,
            ),
            //button
            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: (){},child:  const Text(MyTexts.resendEmail)),
            ),

          ],
        ),

      ),

    );
  }
}
