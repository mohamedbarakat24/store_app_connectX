// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/features/shop/screens/AllProducts/All_products.dart';
import 'package:store_app_connectx/features/shop/screens/Home/widgets/Home_Appbar.dart';
import 'package:store_app_connectx/features/shop/screens/Home/widgets/Homegategories.dart';
import 'package:store_app_connectx/features/shop/screens/Home/widgets/ImageSlider.dart';

import '../../../../commons/Styles/widgets/Containers/PrimaryContainer.dart';
import '../../../../commons/Styles/widgets/Containers/SearchContainer.dart';
import '../../../../commons/Styles/widgets/Layout/GridViewLayout.dart';
import '../../../../commons/Styles/widgets/Products/products_cards/product_card_vertical.dart';
import '../../../../commons/Styles/widgets/Texts/SectionHeading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///header
            const primaryHeaderContainer(
                // ignore: unnecessary_const
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///appbar
                HomeAppBar(),
                SizedBox(
                  height: MySizes.spaceBtwSections,
                ),

                ///search bar
                MySearchContainer(
                  text: 'Search in Store',
                  icon: Iconsax.search_normal,
                ),
                SizedBox(
                  height: MySizes.spaceBtwSections,
                ),

                Padding(
                  padding: EdgeInsets.only(left: MySizes.defaultSpace),
                  child: Column(
                    children: [
                      SectionHeadingWidget(
                          title: "Popular Categories",
                          showactionbutton: false,
                          textColor: Colors.white),
                      SizedBox(
                        height: MySizes.spaceBtwItems,
                      ),

                      ///list view categories

                      HomeCategories(),
                    ],
                  ),
                ),
                SizedBox(
                  height: MySizes.spaceBtwSections,
                ),
              ],
            )),

            ///body

            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  const PromoImageSlider(
                    banners: [
                      MyImages.promoBanner1,
                      MyImages.promoBanner2,
                      MyImages.promoBanner3
                    ],
                  ),
                  const SizedBox(
                    height: MySizes.spaceBtwSections,
                  ),
                  //heading
                  SectionHeadingWidget(
                    title: "Popular Products",
                    onpressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(
                    height: MySizes.spaceBtwItems,
                  ),

                  ///products

                  GridViewLayout(
                      itembuilder: (_, index) => const ProductCardVertical(),
                      itemcount: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
