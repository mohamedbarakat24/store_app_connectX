// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/device/device_utility.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class MySearchContainer extends StatelessWidget {
  const MySearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showborder = true,
    this.ontap,
    this.padding = const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
    this.showbackground = true,
  });
  final String text;
  final IconData? icon;
  final bool showbackground, showborder;
  final VoidCallback? ontap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: padding,
        child: Container(
          width: MYDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(MySizes.md),
          decoration: BoxDecoration(
            color: showbackground
                ? dark
                    ? MyColors.dark
                    : MyColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(MySizes.cardRadiusLg),
            border: showborder ? Border.all(color: MyColors.grey) : null,
          ),
          child: Row(children: [
            Icon(
              icon,
              color: MyColors.darkerGrey,
            ),
            const SizedBox(
              width: MySizes.spaceBtwItems,
            ),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ]),
        ),
      ),
    );
  }
}
