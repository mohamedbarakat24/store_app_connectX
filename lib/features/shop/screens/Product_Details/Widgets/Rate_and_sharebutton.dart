import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
class RatingandShareButton extends StatelessWidget {
  const RatingandShareButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //rating
        Row(
          children: [
            const Icon(
              Iconsax.star5,
              color: Colors.amber,
              size: 24,
            ),
            const SizedBox(
              width: MySizes.spaceBtwItems / 2,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '0.5', style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(text: '(159)')
            ]))
          ],
        ),

        //share button
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: MySizes.iconMd,
            ))
      ],
    );
  }
}
