import 'package:flutter/material.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Brands/brandCard.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Containers/RoundedContainer.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

import '../../../../utils/helpers/helper_functions.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
    required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      padding: const EdgeInsets.all(MySizes.md),
      showborder: true,
      bordercolor: MyColors.darkGrey,
      backgroundcolor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
      child: Column(
        children: [
          ///brands
          const BrandCard(showboreder: false),

          const SizedBox(
            height: MySizes.spaceBtwItems,
          ),

          ///brands top 3
          Row(
              children: images
                  .map((image) => brandtopProductImgesWidget(image, context))
                  .toList())
        ],
      ),
    );
  }
}

Widget brandtopProductImgesWidget(String image, context) {
  return Expanded(
    child: RoundedContainer(
      height: 100,
      backgroundcolor: MyHelperFunctions.isDarkMode(context)
          ? MyColors.darkGrey
          : MyColors.light,
      margin: const EdgeInsets.only(right: MySizes.sm),
      padding: const EdgeInsets.all(MySizes.md),
      child: Image(
        image: AssetImage(image),
        fit: BoxFit.contain,
      ),
    ),
  );
}
