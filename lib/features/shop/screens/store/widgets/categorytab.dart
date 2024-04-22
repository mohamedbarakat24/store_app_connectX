import 'package:flutter/material.dart';

import '../../../../../commons/Styles/widgets/Brands/brand_showCase.dart';
import '../../../../../commons/Styles/widgets/Layout/GridViewLayout.dart';
import '../../../../../commons/Styles/widgets/Products/products_cards/product_card_vertical.dart';
import '../../../../../commons/Styles/widgets/Texts/SectionHeading.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              //Brands
              const BrandShowCase(
                images: [
                  MyImages.productImage2,
                  MyImages.productImage3,
                  MyImages.productImage1
                ],
              ),
              const BrandShowCase(
                images: [
                  MyImages.productImage2,
                  MyImages.productImage3,
                  MyImages.productImage1
                ],
              ),
              //products

              SectionHeadingWidget(
                title: "You might like",
                onpressed: () {},
              ),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),

              GridViewLayout(
                itemcount: 4,
                itembuilder: (_, index) => const ProductCardVertical(),
              ),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
