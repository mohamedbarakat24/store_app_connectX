import 'package:flutter/material.dart';
import 'package:store_app_connectx/utils/constants/enums.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
    required this.title,
    this.maxline = 1,
    this.color,
    this.textAlign = TextAlign.center,
    this.brandTextsize = TextSizes.small,
  });
  final String title;
  final int maxline;
  final Color? color;
  final TextAlign? textAlign;
  final TextSizes? brandTextsize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: brandTextsize == TextSizes.small
              ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
              : brandTextsize == TextSizes.medium
                  ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                  : brandTextsize == TextSizes.large
                      ? Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: color)
                      : Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: color),
          maxLines: maxline,
          textAlign: textAlign,
        ),
      ],
    );
  }
}
