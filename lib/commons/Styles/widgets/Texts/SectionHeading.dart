import 'package:flutter/material.dart';

class SectionHeadingWidget extends StatelessWidget {
  const SectionHeadingWidget({
    super.key,
    this.textColor,
    this.showactionbutton = true,
    this.buttontitle = "view all",
    this.onpressed,
    required this.title,
  });
  final Color? textColor;
  final bool showactionbutton;
  final String title, buttontitle;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showactionbutton)
          TextButton(onPressed: onpressed, child: Text(buttontitle))
      ],
    );
  }
}
