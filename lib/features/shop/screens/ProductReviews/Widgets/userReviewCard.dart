import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Containers/RoundedContainer.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Products/Rating/Rating_indicator.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/image_strings.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage(MyImages.userProfileImage1),
                  ),
                  const SizedBox(
                    width: MySizes.spaceBtwItems,
                  ),
                  Text("leo Messi",
                      style: Theme.of(context).textTheme.titleLarge)
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
          const SizedBox(
            height: MySizes.spaceBtwItems,
          ),
          //Reviews
          Row(
            children: [
              const MyRatingBarIndicator(rating: 4),
              const SizedBox(
                width: MySizes.spaceBtwItems,
              ),
              Text("24 Feb,2024",
                  style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),

          const SizedBox(
            height: MySizes.spaceBtwItems,
          ),

          const ReadMoreText(
            "Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.",
            trimLines: 2,
            trimMode: TrimMode.Line,
            trimExpandedText: " Show less",
            trimCollapsedText: " Show more",
            moreStyle: TextStyle(
                color: MyColors.primary,
                fontWeight: FontWeight.bold,
                fontSize: 14),
            lessStyle: TextStyle(
                color: MyColors.primary,
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),

          const SizedBox(
            height: MySizes.spaceBtwItems,
          ),

          //company Review
          RoundedContainer(
            backgroundcolor: dark ? MyColors.darkGrey : MyColors.grey,
            child: Padding(
              padding: const EdgeInsets.all(MySizes.md),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Amazon store",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        "24 Feb,2024",
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: MySizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
                    "Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimExpandedText: " Show less",
                    trimCollapsedText: " Show more",
                    moreStyle: TextStyle(
                        color: MyColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                    lessStyle: TextStyle(
                        color: MyColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: MySizes.spaceBtwSections,
          ),
        ],
      ),
    );
  }
}
