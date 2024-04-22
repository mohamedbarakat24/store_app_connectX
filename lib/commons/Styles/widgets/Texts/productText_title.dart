import 'package:flutter/material.dart';

class ProductTextTitle extends StatelessWidget {
  const ProductTextTitle({
    super.key,
    required this.title,
    this.smallsize = false,
    this.maxline = 2,
    this.textAlign = TextAlign.left,
  });

  final String title;
  final bool smallsize;
  final int maxline;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallsize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      maxLines: maxline,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
    );
  }
}
