import 'package:flutter/material.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/device/device_utility.dart';

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 12,
          child: SizedBox(
            width: MYDeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              valueColor: const AlwaysStoppedAnimation(MyColors.primary),
              minHeight: 11,
              backgroundColor: MyColors.grey,
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        )
      ],
    );
  }
}
