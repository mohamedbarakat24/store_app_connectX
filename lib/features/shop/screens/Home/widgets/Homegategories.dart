import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store_app_connectx/features/shop/screens/SubCategory/sub_categories.dart';
import 'package:store_app_connectx/utils/constants/image_strings.dart';

import '../../../../../commons/Styles/widgets/ImageTextWidgets/vertical_imageText.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return VerticalImageText(
            title: 'shoes',
            image: MyImages.shoeIcon,
            ontap: () => Get.to(() => const SubCategoriesScreen()),
          );
        },
        itemCount: 6,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
