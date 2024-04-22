import 'package:flutter/material.dart';
import 'package:store_app_connectx/commons/Styles/widgets/appbar/appbar.dart';
import 'package:store_app_connectx/features/shop/screens/ProductReviews/Widgets/userReviewCard.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

import '../../../../commons/Styles/widgets/Products/Rating/Rating_indicator.dart';
import 'Widgets/OverAllProgressRating.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyappBar(
        title: Text(
          "Reviews & Rating",
        ),
        showbackarrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm.Sunrise: The skythm."),

              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),

              //overall product rating
              const OverallProductRating(),
              const MyRatingBarIndicator(
                rating: 4.5,
              ),
              Text(
                "12.256",
                style: Theme.of(context).textTheme.bodySmall,
              ),

              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),

              //User reviews list
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
