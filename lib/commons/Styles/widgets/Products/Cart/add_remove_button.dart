import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Icons/CirculerIcon.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class ProductQuantityWithAddAndRemoveButton extends StatelessWidget {
  const ProductQuantityWithAddAndRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CirculerIconWidget(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: MySizes.md,
          color: dark ? MyColors.white : MyColors.black,
          backgroundcolor: dark ? MyColors.darkGrey : MyColors.light,
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
          width: 32,
          height: 32,
          size: MySizes.md,
          color: MyColors.white,
          backgroundcolor: MyColors.primary,
        ),
      ],
    );
  }
}
