import 'package:flutter/material.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/SectionHeading.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeadingWidget(
          title: "Shipping Address",
          buttontitle: "Change",
          onpressed: () {},
        ),
        Text(
          "Mohamed barakat",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: MySizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: MySizes.spaceBtwItems,
            ),
            Text(
              "+201249595",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: MySizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: MySizes.spaceBtwItems,
            ),
            Text(
              "Shobra , qahwea sharf ,cairo ,Egypt",
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            ),
          ],
        ),
      ],
    );
  }
}
