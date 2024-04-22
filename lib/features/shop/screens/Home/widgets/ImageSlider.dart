import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Containers/CirculerContainer.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Images/roundedImage.dart';
import 'package:store_app_connectx/features/shop/Controllers/HomeController.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

class PromoImageSlider extends StatelessWidget {
  const PromoImageSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items: banners.map((url) => RoundedImage(imageURL: url)).toList(),
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    controller.updatePageIndicator(index))),
        const SizedBox(
          height: MySizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                CirculerContainer(
                  margin: const EdgeInsets.only(right: 10),
                  width: 20,
                  height: 5,
                  backgroundcolor: controller.carousel_CurrnetIndex.value == i
                      ? MyColors.primary
                      : MyColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
