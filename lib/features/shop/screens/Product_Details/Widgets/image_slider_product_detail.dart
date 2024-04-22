import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/commons/Styles/widgets/CustomCurved/Curved_edge_Widget.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Icons/CirculerIcon.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Images/roundedImage.dart';
import 'package:store_app_connectx/commons/Styles/widgets/appbar/appbar.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/image_strings.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return CurvedEdgeWidget(
      child: Container(
        color: dark ? MyColors.darkGrey : MyColors.light,
        child: Stack(
          children: [
            //Main image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(MySizes.productImageRadius * 2),
                  child: Center(
                      child: Image(image: AssetImage(MyImages.productImage1))),
                )),

            //image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: MySizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => RoundedImage(
                      width: 80,
                      backgroundcolor: dark ? MyColors.dark : MyColors.white,
                      border: Border.all(color: MyColors.primary),
                      padding: const EdgeInsets.all(MySizes.sm),
                      imageURL: MyImages.productImage10),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: MySizes.spaceBtwItems,
                  ),
                  itemCount: 7,
                ),
              ),
            ),

            //app bar icons
            const MyappBar(showbackarrow: true, actions: [
              CirculerIconWidget(
                icon: Iconsax.heart5,
                color: Colors.red,
              )
            ])
          ],
        ),
      ),
    );
  }
}
