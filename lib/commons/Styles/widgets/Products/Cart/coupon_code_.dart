import 'package:flutter/material.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Containers/RoundedContainer.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showborder: true,
      backgroundcolor: dark ? MyColors.dark : MyColors.white,
      padding: const EdgeInsets.only(
          right: MySizes.sm,
          top: MySizes.sm,
          left: MySizes.md,
          bottom: MySizes.sm),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Have a promo code? Enter here",
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          //buttons
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark
                          ? MyColors.white.withOpacity(0.5)
                          : MyColors.dark.withOpacity(0.5),
                      backgroundColor: MyColors.grey.withOpacity(0.2),
                      side: BorderSide(color: MyColors.grey.withOpacity(0.1))),
                  onPressed: () {},
                  child: const Text("Apply")))
        ],
      ),
    );
  }
}
