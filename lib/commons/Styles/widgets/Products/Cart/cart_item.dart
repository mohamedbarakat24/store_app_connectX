import 'package:flutter/material.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Images/roundedImage.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/brandTitle_withicon.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/productText_title.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/image_strings.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        //image
        RoundedImage(
          imageURL: MyImages.productImage1,
          width: 60,
          hight: 60,
          padding: const EdgeInsets.all(MySizes.sm),
          backgroundcolor: dark ? MyColors.darkGrey : MyColors.white,
        ),
        if (showAddRemoveButton)
          const SizedBox(
            width: MySizes.spaceBtwItems,
          ),

        //title and price
        if (showAddRemoveButton)
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithIcon(
                title: "Nike",
              ),
              const Flexible(
                  child: ProductTextTitle(
                title: "Black sport shoes",
                maxline: 1,
              )),
              //attributes
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "Color ",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "Green ",
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: "Size ",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "UK 23 ",
                    style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
      ],
    );
  }
}
