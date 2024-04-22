import 'package:flutter/material.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Containers/RoundedContainer.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/productText_title.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

import '../../../../../commons/Styles/widgets/Images/CirculerImage.dart';
import '../../../../../commons/Styles/widgets/Texts/ProductPriceText.dart';
import '../../../../../commons/Styles/widgets/Texts/brandTitle_withicon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //price and sale
        Row(
          children: [
            //sale tag
            RoundedContainer(
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

            //price
            const SizedBox(width: MySizes.spaceBtwItems),
            Text("\$199",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: MySizes.spaceBtwItems),
            const ProductPriceText(price: '175')
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 1.5),
        //title
        const ProductTextTitle(title: "Green nike Sport shirt"),

        const SizedBox(height: MySizes.spaceBtwItems / 1.5),

        //stock status

        Row(
          children: [
            const ProductTextTitle(title: "Status"),
            const SizedBox(width: MySizes.spaceBtwItems),
            Text("In stock", style: Theme.of(context).textTheme.titleMedium!),
          ],
        ),

        const SizedBox(height: MySizes.spaceBtwItems / 1.5),

        //brand

        Row(
          children: [
            CirculerImages(
              image: MyImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? MyColors.white : MyColors.black,
            ),
            const BrandTitleWithIcon(
              title: "Nike",
              brandTextsize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
