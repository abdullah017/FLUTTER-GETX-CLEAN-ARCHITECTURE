import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/src/app/core/base/base_view.dart';
import 'package:getx_clean_architecture/src/app/core/routes/app_pages.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends BaseView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget vBuilder() {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'DashboardView is working',
                style: TextStyle(fontSize: 20),
              ),
              Text('Time: ${controller.now.value.toString()}'),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.rootDelegate.toNamed(Routes.PAGE_C);
                },
                child: const Text('Goto PageC'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
