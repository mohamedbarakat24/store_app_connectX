import 'package:flutter/material.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/device/device_utility.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class TabBarStore extends StatelessWidget implements PreferredSizeWidget {
  const TabBarStore({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: MyHelperFunctions.isDarkMode(context)
          ? MyColors.black
          : MyColors.white,
      child: TabBar(
          isScrollable: true,
          indicatorColor: MyColors.primary,
          labelColor: MyHelperFunctions.isDarkMode(context)
              ? MyColors.white
              : MyColors.primary,
          unselectedLabelColor: MyColors.darkGrey,
          tabs: tabs),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(MYDeviceUtils.getAppBarHeight());
}
