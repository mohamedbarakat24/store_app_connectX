import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../commons/Styles/widgets/Icons/CirculerIcon.dart';
import '../../../../commons/Styles/widgets/Layout/GridViewLayout.dart';
import '../../../../commons/Styles/widgets/Products/products_cards/product_card_vertical.dart';
import '../../../../commons/Styles/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';
import '../Home/Home.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyappBar(
        title: Text(
          "WishList",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CirculerIconWidget(
            icon: (Iconsax.add),
            onpressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              GridViewLayout(
                itemcount: 5,
                itembuilder: (_, index) => const ProductCardVertical(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
