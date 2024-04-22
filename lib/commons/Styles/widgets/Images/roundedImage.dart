import 'package:flutter/cupertino.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.hight,
    required this.imageURL,
    this.applyImageRadius = false,
    this.border,
    this.backgroundcolor,
    this.fit,
    this.padding,
    this.isNetworkimage = false,
    this.onpressed,
    this.borderraduis = MySizes.md,
  });

  final double? width, hight;
  final String imageURL;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundcolor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkimage;
  final VoidCallback? onpressed;
  final double? borderraduis;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: width,
        height: hight,
        padding: padding,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderraduis!),
            border: border,
            color: backgroundcolor),
        child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderraduis!)
                : BorderRadius.zero,
            child: Image(
              image: isNetworkimage
                  ? NetworkImage(imageURL)
                  : AssetImage(imageURL) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}
