import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Containers/RoundedContainer.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Icons/CirculerIcon.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Images/roundedImage.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/ProductPriceText.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/brandTitle_withicon.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/productText_title.dart';
import 'package:store_app_connectx/features/shop/screens/Product_Details/Product_Details.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/image_strings.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';
import 'package:store_app_connectx/utils/theme/widget_themes/Shadow_card.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [MyShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(MySizes.productImageRadius),
          color: dark ? MyColors.darkerGrey : MyColors.white,
        ),
        child: Column(
          children: [
            //image and icons
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(MySizes.sm),
              backgroundcolor: dark ? MyColors.dark : MyColors.light,
              child: Stack(
                children: [
                  //image
                  const RoundedImage(
                    imageURL: MyImages.productImage1,
                    applyImageRadius: true,
                  ),

                  //sale
                  Positioned(
                    top: 12,
                    child: RoundedContainer(
                        radius: MySizes.sm,
                        backgroundcolor: MyColors.secondary.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: MySizes.sm, vertical: MySizes.xs),
                        child: Text(
                          "25%",
                          style: Theme.of(context).textTheme.labelLarge!.apply(
                                color: Colors.black,
                              ),
                        )),
                  ),

                  ///favorite icon

                  const Positioned(
                      top: 0,
                      right: 0,
                      child: CirculerIconWidget(
                          icon: Iconsax.heart5, color: Colors.red)),
                ],
              ),
            ),

            const SizedBox(
              height: MySizes.spaceBtwItems / 2,
            ),
            //details
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MySizes.sm,
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductTextTitle(
                      title: "Nike shoes Air",
                      smallsize: true,
                    ),
                    SizedBox(
                      height: MySizes.spaceBtwItems / 2,
                    ),
                    BrandTitleWithIcon(title: "Nike")
                  ],
                ),
              ),
            ),

            const Spacer(),
            //price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: MySizes.sm),
                  child: ProductPriceText(price: '35.0'),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: MyColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(MySizes.cardRadiusMd),
                      bottomRight: Radius.circular(MySizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                      height: MySizes.iconLg * 1.2,
                      width: MySizes.iconLg * 1.2,
                      child:
                          Center(child: Icon(Icons.add, color: Colors.white))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
