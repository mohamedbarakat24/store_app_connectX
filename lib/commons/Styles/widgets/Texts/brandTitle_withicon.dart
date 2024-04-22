import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/brandTitleText.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/enums.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

class BrandTitleWithIcon extends StatelessWidget {
  const BrandTitleWithIcon({
    super.key,
    required this.title,
    this.maxline = 1,
    this.textcolor,
    this.iconcolor = MyColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextsize = TextSizes.small,
  });

  final String title;
  final int maxline;
  final Color? textcolor, iconcolor;
  final TextAlign? textAlign;
  final TextSizes? brandTextsize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BrandTitleText(
          title: title,
          color: textcolor,
          maxline: maxline,
          textAlign: textAlign,
          brandTextsize: brandTextsize,
        ),
        const SizedBox(
          width: MySizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconcolor,
          size: MySizes.iconXs,
        )
      ],
    );
  }
}
