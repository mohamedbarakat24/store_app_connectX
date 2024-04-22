import 'package:flutter/material.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';

class CirculerContainer extends StatelessWidget {
  const CirculerContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.padding = 0,
    this.child,
    this.radius = 400,
    this.backgroundcolor = MyColors.white,
    this.margin,
  });
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundcolor,
      ),
      child: child,
    );
  }
}
