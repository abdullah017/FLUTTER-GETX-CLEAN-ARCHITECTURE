import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_clean_architecture/src/app/core/routes/pages.dart';
import 'package:getx_clean_architecture/src/app/core/routes/routes_name.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: AppThemes.theme(),
      // darkTheme: AppThemes.darktheme(),
      // themeMode: AppThemes().init(),

      initialRoute: RouterName.root,
      debugShowCheckedModeBanner: false,
      getPages: Pages.pages(),
    );
  }
}
