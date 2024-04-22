import 'package:flutter/material.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class CirculerImages extends StatelessWidget {
  const CirculerImages({
    super.key,
    this.fit = BoxFit.cover,
    this.width = 56,
    this.height = 56,
    this.padding = MySizes.sm,
    this.isnetworkImage = false,
    this.backgroundColor,
    this.overlayColor,
    required this.image,
  });

  final BoxFit? fit;
  final double width, height, padding;
  final bool isnetworkImage;
  final Color? backgroundColor;
  final Color? overlayColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (MyHelperFunctions.isDarkMode(context)
                ? MyColors.black
                : MyColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
          image: isnetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          fit: fit,
          color: overlayColor),
    );
  }
}
