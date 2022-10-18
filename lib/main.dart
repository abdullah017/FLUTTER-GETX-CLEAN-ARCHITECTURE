import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_clean_architecture/src/app/core/routes/app_pages.dart';
import 'package:responsive_framework/responsive_framework.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(GetMaterialApp.router(
    builder:(context, child) =>   ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, child!),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
    // theme: AppThemes.theme(),
    // darkTheme: AppThemes.darktheme(),
    // themeMode: AppThemes().init(),

    debugShowCheckedModeBanner: false,
    getPages: AppPages.routes,
    routeInformationParser: GetInformationParser(
      initialRoute: Routes.HOME,
    ),
  ),

  );
}
