import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Containers/RoundedContainer.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});
  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      padding: const EdgeInsets.all(MySizes.md),
      width: double.infinity,
      showborder: true,
      backgroundcolor: selectedAddress
          ? MyColors.primary.withOpacity(0.5)
          : Colors.transparent,
      bordercolor: selectedAddress
          ? Colors.transparent
          : dark
              ? MyColors.darkGrey
              : MyColors.grey,
      margin: const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(

              selectedAddress ? Iconsax.tick_circle : null,
              color: selectedAddress
                  ? dark
                      ? MyColors.light
                      : MyColors.dark.withOpacity(0.7)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Leo messi",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: MySizes.sm / 2,
              ),
              const Text(
                "+201215155656",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: MySizes.sm / 2,
              ),
              const Text(
                "2 Shobra Street , Cairo ,Egypt",
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
