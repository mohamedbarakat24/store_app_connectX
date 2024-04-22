import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:store_app_connectx/features/shop/screens/Product_Details/Widgets/Product_meta_data.dart';
import 'package:store_app_connectx/features/shop/screens/Product_Details/Widgets/product_attributes.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

import '../../../../commons/Styles/widgets/Texts/SectionHeading.dart';
import '../ProductReviews/Product_reviews.dart';
import 'Widgets/Rate_and_sharebutton.dart';
import 'Widgets/bottomAddtocart.dart';
import 'Widgets/image_slider_product_detail.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //product image slider
            const ProductImageSlider(),
            //prodcut details
            Padding(
              padding: const EdgeInsets.only(
                right: MySizes.defaultSpace,
                left: MySizes.defaultSpace,
                bottom: MySizes.defaultSpace,
              ),
              child: Column(
                children: [
                  //rating and share button
                  const RatingandShareButton(),
                  //ptice ,title,stock
                  const ProductMetaData(),
                  //attributes
                  const ProductAttributes(),
                  //checkout button
                  const SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),

                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("Checkout"))),

                  const SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),
                  //description
                  const SectionHeadingWidget(
                      title: "Description", showactionbutton: false),
                  const ReadMoreText(
                    "Ocean Waves: Crashing waves embrace, Salt-kissed breeze whispers secrets, Tides dance in rhythmCity LightsNeon signs flicker, Streets alive with hurried steps, Urban pulse persists",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "  show more",
                    trimExpandedText: "  Less",
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  const SizedBox(
                    height: MySizes.spaceBtwItems,
                  ),

                  //reviews
                  const Divider(),

                  const SizedBox(
                    height: MySizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeadingWidget(
                        title: "Reviews (159)",
                        showactionbutton: false,
                      ),
                      IconButton(
                        onPressed: () => Get.to(() => const ProductReviews()),
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
