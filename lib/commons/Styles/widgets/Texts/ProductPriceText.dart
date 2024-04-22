import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    super.key,
    required this.price,
    this.currentSign = '\$',
    this.maxline = 1,
    this.islarge = false,
    this.linethrough = false,
  });
  final String price, currentSign;
  final int maxline;
  final bool islarge, linethrough;
  @override
  Widget build(BuildContext context) {
    return Text(
      currentSign + price,
      overflow: TextOverflow.ellipsis,
      style: islarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: linethrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: linethrough ? TextDecoration.lineThrough : null),
      maxLines: maxline,
    );
  }
}
