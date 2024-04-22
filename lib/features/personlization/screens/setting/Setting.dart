import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Containers/PrimaryContainer.dart';
import 'package:store_app_connectx/commons/Styles/widgets/ListTile/setting_menuTile.dart';
import 'package:store_app_connectx/commons/Styles/widgets/ListTile/userProfileTile.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/SectionHeading.dart';
import 'package:store_app_connectx/commons/Styles/widgets/appbar/appbar.dart';
import 'package:store_app_connectx/features/personlization/screens/address/address.dart';
import 'package:store_app_connectx/features/personlization/screens/profiles/profileScreen.dart';
import 'package:store_app_connectx/features/shop/screens/Order/OrderScreen.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';

import '../../../../utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            primaryHeaderContainer(
                child: Column(
              children: [
                MyappBar(
                  title: Text("Account",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: MyColors.white)),
                ),

                //user card
                UserProfileTile(
                    ontap: () => Get.to(() => const ProfileScreen())),
                const SizedBox(
                  height: MySizes.spaceBtwSections,
                ),
              ],
            )),
            //body

            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  ///Acount sitting
                  const SectionHeadingWidget(
                    title: "Account Settings",
                    showactionbutton: false,
                  ),
                  const SizedBox(height: MySizes.spaceBtwItems),
                  SettingMenuTile(
                      ontap: () => Get.to(() => const UserAddressScreen()),
                      icon: Iconsax.safe_home,
                      title: "My addresses",
                      subtitle: "set shopping delivery address"),

                  SettingMenuTile(
                      ontap: () {},
                      icon: Iconsax.shopping_cart,
                      title: "My Cart",
                      subtitle: "add, remove products and move to checkout"),
                  SettingMenuTile(
                    ontap: () => Get.to(() => const OrderScreen()),
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subtitle: "In Progress and Completed Orders",
                  ),
                  SettingMenuTile(
                      ontap: () {},
                      icon: Iconsax.bank,
                      title: "Bank Account",
                      subtitle: "Withdraw balance to registered bank account"),

                  SettingMenuTile(
                      ontap: () {},
                      icon: Iconsax.discount_shape,
                      title: "My coupons",
                      subtitle: "List of all the discounted coupons"),
                  SettingMenuTile(
                      ontap: () {},
                      icon: Iconsax.notification,
                      title: "Notifications",
                      subtitle: "set anu kind of notification message"),
                  SettingMenuTile(
                      ontap: () {},
                      icon: Iconsax.security_card,
                      title: "Account Privacy",
                      subtitle: "Manage data usage and connected accounts"),

                  ///app sitting

                  const SizedBox(height: MySizes.spaceBtwSections),
                  const SectionHeadingWidget(
                    title: "Account Settings",
                    showactionbutton: false,
                  ),

                  SettingMenuTile(
                      ontap: () {},
                      icon: Iconsax.document_upload,
                      title: "Load Data",
                      subtitle: "Upload your data to cloud Firebase"),

                  SettingMenuTile(
                    ontap: () {},
                    icon: Iconsax.location,
                    title: "Geolocation",
                    subtitle: "Set recommendation based on location",
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingMenuTile(
                    ontap: () {},
                    icon: Iconsax.security_user,
                    title: "Safe Mode",
                    subtitle: "Search results is safe for all ages",
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingMenuTile(
                    ontap: () {},
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    subtitle: "Set image Quality to be seen",
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),

                  ///logout button

                  const SizedBox(height: MySizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text("Logout")),
                  ),
                  const SizedBox(height: MySizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
