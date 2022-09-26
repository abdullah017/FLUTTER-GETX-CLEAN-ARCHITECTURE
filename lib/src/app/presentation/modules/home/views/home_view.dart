import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/src/app/core/base/base_view.dart';
import 'package:getx_clean_architecture/src/app/core/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends BaseView<HomeController> {
  const HomeView({super.key});

  @override
  Widget vBuilder() {
    return Center(
        child: ElevatedButton(
            onPressed: () {
              // Get.toNamed(Routes.DASHBOARD);
              Get.rootDelegate.toNamed(Routes.DASHBOARD);
              // Get.to(
              //   DashboardView(),
              //   binding: DashboardBinding(),
              // );
            },
            child: const Text('DASHBOARD')));
  }
}
