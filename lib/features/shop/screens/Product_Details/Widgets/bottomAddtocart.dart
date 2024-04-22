import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Icons/CirculerIcon.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';


class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: MySizes.defaultSpace, vertical: MySizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? MyColors.darkGrey : MyColors.light,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(MySizes.cardRadiusLg),
              topRight: Radius.circular(MySizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CirculerIconWidget(
                icon: Iconsax.minus,
                backgroundcolor: MyColors.black.withOpacity(0.4),
                width: 40,
                height: 40,
                color: Colors.white,
              ),
              const SizedBox(
                width: MySizes.spaceBtwItems,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: MySizes.spaceBtwItems,
              ),
              const CirculerIconWidget(
                icon: Iconsax.add,
                backgroundcolor: MyColors.black,
                width: 40,
                height: 40,
                color: Colors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(MySizes.md),
                backgroundColor: MyColors.black,
                side: const BorderSide(color: Colors.black)),
            child: const Text("Add to Cart"),
          )
        ],
      ),
    );
  }
}
