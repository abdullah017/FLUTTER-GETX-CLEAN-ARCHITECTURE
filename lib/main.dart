import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_clean_architecture/src/app/core/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(GetMaterialApp.router(
    // theme: AppThemes.theme(),
    // darkTheme: AppThemes.darktheme(),
    // themeMode: AppThemes().init(),

    debugShowCheckedModeBanner: false,
    getPages: AppPages.routes,
    routeInformationParser: GetInformationParser(
      initialRoute: Routes.HOME,
    ),
  ));
}
