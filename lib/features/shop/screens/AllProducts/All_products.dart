import 'package:flutter/material.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Products/Sortable/sortable_products.dart';
import 'package:store_app_connectx/commons/Styles/widgets/appbar/appbar.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyappBar(
        title: Text("Populer Products"),
        showbackarrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: SortableProducts(),
        ),
      ),
    );
  }
}
