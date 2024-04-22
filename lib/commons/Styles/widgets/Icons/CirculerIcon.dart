import 'package:flutter/material.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class CirculerIconWidget extends StatelessWidget {
  const CirculerIconWidget({
    super.key,
    this.width,
    this.height,
    this.size = MySizes.lg,
    required this.icon,
    this.color,
    this.backgroundcolor,
    this.onpressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundcolor;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundcolor != null
            ? backgroundcolor!
            : MyHelperFunctions.isDarkMode(context)
                ? MyColors.dark.withOpacity(0.4)
                : MyColors.white.withOpacity(0.1),
      ),
      child: IconButton(
          onPressed: onpressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
