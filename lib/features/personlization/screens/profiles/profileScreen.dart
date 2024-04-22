import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Images/CirculerImage.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/SectionHeading.dart';
import 'package:store_app_connectx/commons/Styles/widgets/appbar/appbar.dart';
import 'package:store_app_connectx/utils/constants/image_strings.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

import 'widgets/profile_menu_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyappBar(
        showbackarrow: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              //profile pic
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CirculerImages(
                      image: MyImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {}, child: const Text("Change profile Picture"))
                  ],
                ),
              ),

              //details

              const SizedBox(height: MySizes.spaceBtwItems / 2),
              const Divider(),

              const SizedBox(height: MySizes.spaceBtwItems),
              const SectionHeadingWidget(
                title: "Profile Information",
                showactionbutton: false,
              ),
              ProfileMenu(
                onpressed: () {},
                title: 'Name',
                value: 'Mohamed',
              ),
              ProfileMenu(
                onpressed: () {},
                title: 'Username',
                value: 'Mo_24',
              ),

              const SizedBox(height: MySizes.spaceBtwItems),

              const Divider(),

              const SizedBox(height: MySizes.spaceBtwItems),
              const SectionHeadingWidget(
                title: "Personal Information",
                showactionbutton: false,
              ),

              const SizedBox(height: MySizes.spaceBtwItems),

              ProfileMenu(
                onpressed: () {},
                title: 'User ID',
                icon: Iconsax.copy,
                value: '456',
              ),
              ProfileMenu(
                onpressed: () {},
                title: 'E-Mail',
                value: 'Mohamed@gmail.com',
              ),
              ProfileMenu(
                onpressed: () {},
                title: 'Phone Number',
                value: '201245459452',
              ),
              ProfileMenu(
                onpressed: () {},
                title: 'Gender',
                value: 'Male',
              ),
              ProfileMenu(
                onpressed: () {},
                title: 'Date of Birth',
                value: '24 feb,2004',
              ),

              const Divider(),

              const SizedBox(height: MySizes.spaceBtwItems),

              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Close Account",
                      style: TextStyle(color: Colors.red),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
