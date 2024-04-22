import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_connectx/commons/Styles/widgets/appbar/appbar.dart';
import 'package:store_app_connectx/features/shop/screens/Cart/widgets/cart_item_inCheckout.dart';
import 'package:store_app_connectx/features/shop/screens/Checkout/CheckoutScreen.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MyappBar(
        showbackarrow: true,
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: MyCartItems()),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen()),
            child: const Text("Checkout \$299.0")),
      ),
    );
  }
}
