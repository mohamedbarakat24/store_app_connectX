import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

import 'package:store_app_connectx/app.dart';
import 'package:store_app_connectx/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // .then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  runApp(const App());
}
