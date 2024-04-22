import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Brands/brandCard.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Layout/GridViewLayout.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/SectionHeading.dart';
import 'package:store_app_connectx/commons/Styles/widgets/appbar/appbar.dart';
import 'package:store_app_connectx/features/shop/screens/Brands/brand_product.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyappBar(
        showbackarrow: true,
        title: Text("Brands"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              const SectionHeadingWidget(
                title: "Brands",
                showactionbutton: false,
              ),
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
              //brands
              GridViewLayout(
                mainaxisextend: 80,
                itemcount: 10,
                itembuilder: (context, index) => BrandCard(
                  showboreder: true,
                  ontap: () => Get.to(() => const BrandProducts()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
