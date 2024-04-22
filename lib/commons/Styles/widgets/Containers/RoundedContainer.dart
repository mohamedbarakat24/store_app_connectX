import 'package:flutter/material.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.height,
    this.width,
    this.padding,
    this.child,
    this.radius = MySizes.cardRadiusLg,
    this.backgroundcolor = MyColors.white,
    this.margin,
    this.showborder = false,
    this.bordercolor = MyColors.borderPrimary,
  });
  final double? width;
  final double? height;
  final double radius;
  final bool showborder;

  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final Color backgroundcolor;

  final Color bordercolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundcolor,
          border: showborder ? Border.all(color: bordercolor) : null),
      child: child,
    );
  }
}
