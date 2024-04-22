import 'package:flutter/material.dart';
import 'package:store_app_connectx/commons/Styles/space_Style.dart';
import 'package:store_app_connectx/utils/constants/text_strings.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/sizes.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onpressed});

  final String image ,title,subtitle;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: MySpaceStyle.paddingWithAppBarHight*2
        ,
          child: Column(
            children: [
              //image
              Image(image:  AssetImage(image),width: MyHelperFunctions.screenWidth()*0.6,),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              //title &sub
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              Text("mofsifjsofsf.com",style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              Text(subtitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              //button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: onpressed,child:  const Text(MyTexts.Continue)),
              ),

            ],
          ),

        ),

      ),
    );
  }
}
