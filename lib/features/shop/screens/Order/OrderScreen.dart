import 'package:flutter/material.dart';
import 'package:store_app_connectx/commons/Styles/widgets/appbar/appbar.dart';
import 'package:store_app_connectx/features/shop/screens/Order/Widgets/Order_list.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyappBar(
        title: Text(
          "My Orders",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showbackarrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(MySizes.defaultSpace),
        child: OrderListItem(),
      ),
    );
  }
}
