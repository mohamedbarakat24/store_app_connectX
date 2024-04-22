import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/features/personlization/screens/setting/Setting.dart';
import 'package:store_app_connectx/features/shop/screens/Home/Home.dart';
import 'package:store_app_connectx/features/shop/screens/WishList/wishlist.dart';
import 'package:store_app_connectx/features/shop/screens/store/store.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            backgroundColor: darkMode ? MyColors.black : MyColors.white,
            indicatorColor: darkMode
                ? MyColors.white.withOpacity(0.1)
                : MyColors.black.withOpacity(0.1),
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            height: 80,
            onDestinationSelected: (i) => controller.selectedIndex.value = i,
            destinations: const [
              NavigationDestination(
                icon: Icon(Iconsax.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.shop),
                label: 'Store',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.heart),
                label: 'Favourite',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.user),
                label: 'Profile',
              ),
            ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const FavouriteScreen(),
    const SettingScreen()
  ];
}
