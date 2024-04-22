import 'package:flutter/material.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Containers/RoundedContainer.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Images/CirculerImage.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/brandTitle_withicon.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/image_strings.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/enums.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    required this.showboreder,
    this.ontap,
  });

  final bool showboreder;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(MySizes.sm),
        showborder: showboreder,
        backgroundcolor: Colors.transparent,
        child: Row(
          children: [
            //icons
            Flexible(
              child: CirculerImages(
                image: MyImages.clothIcon,
                isnetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: MyHelperFunctions.isDarkMode(context)
                    ? MyColors.white
                    : MyColors.black,
              ),
            ),

            //text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleWithIcon(
                    title: "Nike",
                    brandTextsize: TextSizes.large,
                  ),
                  Text(
                    "256 Products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
