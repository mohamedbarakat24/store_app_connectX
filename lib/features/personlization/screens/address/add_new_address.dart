import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_connectx/commons/Styles/widgets/appbar/appbar.dart';
import 'package:store_app_connectx/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyappBar(
        showbackarrow: true,
        title: Text("Add New Address"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefix: Icon(Iconsax.user), labelText: "Name"),
                ),
                const SizedBox(
                  height: MySizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefix: Icon(Iconsax.mobile), labelText: "Phone Number"),
                ),
                const SizedBox(
                  height: MySizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      decoration: const InputDecoration(
                          prefix: Icon(Iconsax.building_31),
                          labelText: "Street"),
                    )),
                    const SizedBox(
                      width: MySizes.spaceBtwInputFields,
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: const InputDecoration(
                          prefix: Icon(Iconsax.code), labelText: "Home Number"),
                    )),
                  ],
                ),
                const SizedBox(
                  height: MySizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                      decoration: const InputDecoration(
                          prefix: Icon(Iconsax.building), labelText: "City"),
                    )),
                    const SizedBox(
                      width: MySizes.spaceBtwInputFields,
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: const InputDecoration(
                          prefix: Icon(Iconsax.activity), labelText: "State"),
                    )),
                  ],
                ),
                const SizedBox(
                  height: MySizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefix: Icon(Iconsax.global), labelText: "Country"),
                ),
                const SizedBox(
                  height: MySizes.defaultSpace,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {}, child: const Text("Save")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
