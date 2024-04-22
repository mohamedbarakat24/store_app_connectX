import 'package:flutter/material.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Products/Cart/Cart_menu_Icon.dart';
import 'package:store_app_connectx/commons/Styles/widgets/appbar/appbar.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/text_strings.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyappBar(
      title: Column(children: [
        Text(
          MyTexts.homeAppbarTitle,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .apply(color: MyColors.grey),
        ),
        Text(
          MyTexts.homeAppbarSubTitle,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: MyColors.white),
        )
      ]),
      actions: [
        CartCounterIconWidget(
          onpressed: () {},
          iconcolor: MyColors.white,
        )
      ],
    );
  }
}
