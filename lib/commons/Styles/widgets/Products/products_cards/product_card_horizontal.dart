import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Containers/RoundedContainer.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Icons/CirculerIcon.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Images/roundedImage.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/ProductPriceText.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/brandTitle_withicon.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/productText_title.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/image_strings.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';
import 'package:store_app_connectx/utils/theme/widget_themes/Shadow_card.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [MyShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(MySizes.productImageRadius),
        color: dark ? MyColors.darkerGrey : MyColors.softGrey,
      ),
      child: Row(
        children: [
          RoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(MySizes.sm),
            backgroundcolor: dark ? MyColors.dark : MyColors.white,
            child: Stack(
              children: [
                //image
                const RoundedImage(
                  imageURL: MyImages.productImage1,
                  applyImageRadius: true,
                ),

                //sale tage
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
                            color: MyColors.black,
                          ),
                    ),
                  ),
                ),
                //favorites button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: CirculerIconWidget(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          //details

          SizedBox(
            width: 190,
            child: Padding(
              padding: const EdgeInsets.only(top: MySizes.sm, left: MySizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTextTitle(
                        title: "Green Nike half",
                        smallsize: true,
                      ),
                      SizedBox(
                        height: MySizes.spaceBtwItems / 2,
                      ),
                      BrandTitleWithIcon(title: "Nike"),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //price
                      const Flexible(
                          child: Padding(
                        padding: EdgeInsets.only(left: MySizes.sm),
                        child: ProductPriceText(price: "265.0"),
                      )),

                      //add to cart
                      Container(
                        decoration: const BoxDecoration(
                            color: MyColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(MySizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(MySizes.productImageRadius),
                            )),
                        child: const SizedBox(
                          width: MySizes.iconLg * 1.2,
                          height: MySizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: MyColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
