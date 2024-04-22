import 'package:flutter/material.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Containers/CirculerContainer.dart';
import 'package:store_app_connectx/commons/Styles/widgets/CustomCurved/Curved_edge_Widget.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';

class primaryHeaderContainer extends StatelessWidget {
  const primaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: MyColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: CirculerContainer(
                backgroundcolor: MyColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: CirculerContainer(
                backgroundcolor: MyColors.textWhite.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
