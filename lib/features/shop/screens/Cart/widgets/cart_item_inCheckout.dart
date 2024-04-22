// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:store_app_connectx/commons/Styles/widgets/Products/Cart/add_remove_button.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Products/Cart/cart_item.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/ProductPriceText.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class MyCartItems extends StatelessWidget {
  const MyCartItems({
    Key? key,
    this.showAddRemoveButton = true,
  }) : super(key: key);
  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 4,
      shrinkWrap: true,
      itemBuilder: (_, index) {
        return Column(
          children: [
            const CartItem(),
            if (showAddRemoveButton)
              const SizedBox(
                height: MySizes.spaceBtwItems,
              ),
            if (showAddRemoveButton)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      ProductQuantityWithAddAndRemoveButton(),
                    ],
                  ),
                  //add remove button

                  ProductPriceText(price: "299")
                ],
              )
          ],
        );
      },
      separatorBuilder: (_, __) => const SizedBox(
        height: MySizes.spaceBtwSections,
      ),
    );
  }
}
