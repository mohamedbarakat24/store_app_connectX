import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Layout/GridViewLayout.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Products/products_cards/product_card_vertical.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //dropdown
        DropdownButtonFormField(
          items: [
            "name",
            "Higher Price",
            "Lower Price",
            "Sale",
            "Newest",
            "Popularity"
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
          onChanged: (value) {},
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
        ),
        const SizedBox(
          height: MySizes.spaceBtwSections,
        ),
        //products
        GridViewLayout(
          itemcount: 8,
          itembuilder: (_, index) => const ProductCardVertical(),
        )
      ],
    );
  }
}
