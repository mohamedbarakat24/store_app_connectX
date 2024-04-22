import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Images/CirculerImage.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/constants/image_strings.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
    required this.ontap,
  });

  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CirculerImages(
        image: MyImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text("Mohamed Barakat",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: MyColors.white)),
      subtitle: Text("mohamed@gmail.com",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: MyColors.white)),
      trailing: IconButton(
          onPressed: ontap,
          icon: const Icon(
            Iconsax.edit,
            color: MyColors.white,
          )),
    );
  }
}
