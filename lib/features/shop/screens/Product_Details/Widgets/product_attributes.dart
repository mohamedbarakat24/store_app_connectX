import 'package:flutter/material.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Chips/choicechips.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Containers/RoundedContainer.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/ProductPriceText.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/SectionHeading.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Texts/productText_title.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //titile and pricing and stock

        RoundedContainer(
          padding: const EdgeInsets.all(MySizes.md),
          backgroundcolor: dark ? MyColors.darkGrey : MyColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const SectionHeadingWidget(
                    title: "Variations",
                    showactionbutton: false,
                  ),
                  const SizedBox(
                    width: MySizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //price and acual price
                      Row(
                        children: [
                          const ProductTextTitle(
                            title: "Price :  ",
                            smallsize: true,
                          ),
                          //acual price
                          Text("\$499",
                              style:
                                  Theme.of(context).textTheme.titleSmall!.apply(
                                        decoration: TextDecoration.lineThrough,
                                      )),
                          const SizedBox(
                            width: MySizes.spaceBtwItems,
                          ),
                          //sale price
                          const ProductPriceText(price: "400"),
                        ],
                      ),
                      Row(
                        children: [
                          //Stock
                          Row(
                            children: [
                              const ProductTextTitle(
                                title: "Stock :  ",
                                smallsize: true,
                              ),
                              Text("In stock",
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              //variation description

              const ProductTextTitle(
                title:
                    "this is description of the product and it can be in 4 lines",
                smallsize: true,
                maxline: 4,
              )
            ],
          ),
        ),

        const SizedBox(
          height: MySizes.spaceBtwItems,
        ),

        ///attributes

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeadingWidget(title: "Colors"),
            const SizedBox(
              width: MySizes.spaceBtwItems / 2,
            ),
            Wrap(
              children: [
                ChoiceChipforColors(
                  text: "Green",
                  selected: false,
                  onselected: (value) {},
                ),
                ChoiceChipforColors(
                    text: "Blue", selected: true, onselected: (value) {}),
                ChoiceChipforColors(
                    text: "Yellow", selected: false, onselected: (value) {})
              ],
            )
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeadingWidget(title: "Sizes"),
            const SizedBox(
              width: MySizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                ChoiceChipforColors(
                    text: "EU 34", selected: true, onselected: (value) {}),
                ChoiceChipforColors(
                    text: "EU 36", selected: false, onselected: (value) {}),
                ChoiceChipforColors(
                    text: "EU 38", selected: false, onselected: (value) {})
              ],
            )
          ],
        ),
      ],
    );
  }
}
