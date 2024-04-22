import 'package:flutter/material.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

class GridViewLayout extends StatelessWidget {
  const GridViewLayout({
    super.key,
    required this.itemcount,
    this.mainaxisextend = 288,
    required this.itembuilder,
  });
  final int itemcount;
  final double? mainaxisextend;
  final Widget? Function(BuildContext, int) itembuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemcount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: itembuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: mainaxisextend,
          crossAxisCount: 2,
          mainAxisSpacing: MySizes.gridViewSpacing,
          crossAxisSpacing: MySizes.gridViewSpacing),
    );
  }
}
