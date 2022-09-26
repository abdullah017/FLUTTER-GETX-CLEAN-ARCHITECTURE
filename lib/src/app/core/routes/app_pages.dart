// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:getx_clean_architecture/src/app/presentation/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:getx_clean_architecture/src/app/presentation/modules/dashboard/page_c/page_c_binding.dart';
import 'package:getx_clean_architecture/src/app/presentation/modules/dashboard/page_c/page_c_view.dart';
import 'package:getx_clean_architecture/src/app/presentation/modules/dashboard/page_d/page_d_binding.dart';
import 'package:getx_clean_architecture/src/app/presentation/modules/dashboard/page_d/page_d_view.dart';
import 'package:getx_clean_architecture/src/app/presentation/modules/dashboard/views/dashboard_view.dart';
import 'package:getx_clean_architecture/src/app/presentation/modules/home/bindings/home_binding.dart';
import 'package:getx_clean_architecture/src/app/presentation/modules/home/views/home_view.dart';
import 'package:getx_clean_architecture/src/app/presentation/modules/root/bindings/root_binding.dart';
import 'package:getx_clean_architecture/src/app/presentation/modules/root/views/root_view.dart';
import 'package:getx_clean_architecture/src/app/presentation/modules/settings/bindings/settings_binding.dart';
import 'package:getx_clean_architecture/src/app/presentation/modules/settings/views/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: '/',
      page: () => const RootView(),
      binding: RootBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
          preventDuplicates: true,
          name: _Paths.HOME,
          page: () => const HomeView(),
          transition: Transition.size,
          bindings: [
            HomeBinding(),
          ],
          title: null,
          children: [
            GetPage(
              name: _Paths.DASHBOARD,
              page: () => const DashboardView(),
              binding: DashboardBinding(),
              children: [
                GetPage(
                    name: _Paths.PAGE_C,
                    page: () => const PageCPage(),
                    binding: PageCBinding(),
                    transition: Transition.size,
                    // middlewares: [
                    //   //only enter this route when authed
                    //   EnsureAuthMiddleware(),
                    // ],
                    children: [
                      GetPage(
                        name: _Paths.PAGE_D,
                        page: () => const PageDPage(),
                        binding: PageDBinding(),
                        transition: Transition.size,
                        // middlewares: [
                        //   //only enter this route when authed
                        //   EnsureAuthMiddleware(),
                        // ],
                      ),
                    ]),
              ],
            ),
            GetPage(
              name: _Paths.SETTINGS,
              transition: Transition.size,
              page: () => const SettingsView(),
              binding: SettingsBinding(),
            ),
          ],
        ),
      ],
    ),
  ];
}
