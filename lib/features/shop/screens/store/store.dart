import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/features/shop/screens/Brands/Brands.dart';
import 'package:store_app_connectx/features/shop/screens/store/widgets/categorytab.dart';
import '../../../../commons/Styles/widgets/Brands/brandCard.dart';
import '../../../../commons/Styles/widgets/Containers/SearchContainer.dart';
import '../../../../commons/Styles/widgets/Layout/GridViewLayout.dart';
import '../../../../commons/Styles/widgets/Products/Cart/Cart_menu_Icon.dart';
import '../../../../commons/Styles/widgets/Texts/SectionHeading.dart';
import '../../../../commons/Styles/widgets/appbar/appbar.dart';
import '../../../../commons/Styles/widgets/appbar/tabbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MyappBar(
          title:
              Text("Store", style: Theme.of(context).textTheme.headlineMedium),
          actions: [CartCounterIconWidget(onpressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, InnerisScroll) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: MyHelperFunctions.isDarkMode(context)
                    ? MyColors.black
                    : MyColors.white,
                expandedHeight: 440,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(MySizes.defaultSpace),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      ///search bar
                      const SizedBox(
                        height: MySizes.spaceBtwItems,
                      ),

                      const MySearchContainer(
                        text: 'Search in Store',
                        icon: Iconsax.search_normal,
                        showborder: true,
                        showbackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: MySizes.spaceBtwSections,
                      ),

                      ///brands

                      SectionHeadingWidget(
                        title: "Feature Brands",
                        onpressed: () => Get.to(() => const BrandsScreen()),
                      ),
                      const SizedBox(
                        height: MySizes.spaceBtwItems / 1.5,
                      ),

                      GridViewLayout(
                          itemcount: 4,
                          mainaxisextend: 80,
                          itembuilder: (_, index) {
                            return const BrandCard(
                              showboreder: true,
                            );
                          })
                    ],
                  ),
                ),

                ///tabs
                bottom: const TabBarStore(
                  tabs: [
                    Tab(
                      child: Text("Sports"),
                    ),
                    Tab(
                      child: Text("Furniture"),
                    ),
                    Tab(
                      child: Text("Electricronics"),
                    ),
                    Tab(
                      child: Text("Clothes"),
                    ),
                    Tab(
                      child: Text("Cosmetics"),
                    )
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
