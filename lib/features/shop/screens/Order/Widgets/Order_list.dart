import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Containers/RoundedContainer.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_, __) => const SizedBox(
        height: MySizes.spaceBtwItems,
      ),
      itemBuilder: (_, index) => RoundedContainer(
        padding: const EdgeInsets.all(MySizes.md),
        showborder: true,
        backgroundcolor: dark ? MyColors.dark : MyColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Row 1
            Row(
              children: [
                //icon
                const Icon(Iconsax.ship),
                const SizedBox(
                  width: MySizes.spaceBtwItems / 2,
                ),
                //status & date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Processing",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: MyColors.primary, fontWeightDelta: 1),
                      ),
                      Text(
                        "07,FEB 2024",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                //icon
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.arrow_right_34,
                      size: MySizes.iconSm,
                    ))
              ],
            ),
            //row 2
            const SizedBox(
              height: MySizes.spaceBtwItems,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //icon
                      const Icon(Iconsax.ship),
                      const SizedBox(
                        width: MySizes.spaceBtwItems / 2,
                      ),
                      //status & date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              "[#26]",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      //icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(
                        width: MySizes.spaceBtwItems / 2,
                      ),
                      //status & date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shipping Date",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              "24,FEB 2024",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
