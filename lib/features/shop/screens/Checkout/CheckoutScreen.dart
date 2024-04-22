import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_connectx/Navigationbar.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Containers/RoundedContainer.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Products/Cart/coupon_code_.dart';
import 'package:store_app_connectx/commons/Styles/widgets/appbar/appbar.dart';
import 'package:store_app_connectx/commons/Styles/widgets/login_SignUp/sucessScrenn/sucessScreen.dart';
import 'package:store_app_connectx/features/shop/screens/Cart/widgets/cart_item_inCheckout.dart';
import 'package:store_app_connectx/features/shop/screens/Checkout/widgets/Billing_amount_sec.dart';
import 'package:store_app_connectx/features/shop/screens/Checkout/widgets/billing_address_sec.dart';
import 'package:store_app_connectx/features/shop/screens/Checkout/widgets/billing_payment_sec.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/image_strings.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MyappBar(
        showbackarrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              //item in cart
              const MyCartItems(
                showAddRemoveButton: false,
              ),
              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),
              //coupon in cart
              const CouponCode(),

              const SizedBox(
                height: MySizes.spaceBtwSections,
              ),

              //billing
              RoundedContainer(
                padding: const EdgeInsets.all(MySizes.md),
                showborder: true,
                backgroundcolor: dark ? MyColors.black : MyColors.white,
                child: const Column(
                  children: [
                    //pricing
                    BillingAmountSection(),
                    SizedBox(
                      height: MySizes.spaceBtwItems,
                    ),
                    //divider
                    Divider(),

                    SizedBox(
                      height: MySizes.spaceBtwItems,
                    ),
                    //payment
                    BillingPaymentSection(),
                    SizedBox(
                      height: MySizes.spaceBtwItems,
                    ),
                    //address
                    BillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SucessScreen(
                  image: MyImages.sucessCheck,
                  title: "Payment Success",
                  subtitle: "Your item will be shipped soon!",
                  onpressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: const Text("Checkout \$299.0")),
      ),
    );
  }
}
