import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/features/shop/screens/Cart/cart_screen.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';

class CartCounterIconWidget extends StatelessWidget {
  const CartCounterIconWidget({
    super.key,
    required this.onpressed,
    this.iconcolor,
  });
  final VoidCallback onpressed;
  final Color? iconcolor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () => Get.to(() => const CartScreen()),
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconcolor,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: MyColors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .apply(color: MyColors.white, fontSizeFactor: 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
