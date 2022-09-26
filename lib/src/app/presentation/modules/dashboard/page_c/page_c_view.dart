// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/src/app/core/base/base_view.dart';
import 'package:getx_clean_architecture/src/app/core/routes/app_pages.dart';
import 'package:getx_clean_architecture/src/app/presentation/modules/dashboard/controllers/dashboard_controller.dart';

import 'page_c_logic.dart';

class PageCPage extends BaseView<DashboardController> {
  const PageCPage({super.key});

  @override
  Widget vBuilder() {
    final logic = Get.find<PageCLogic>();
    final state = Get.find<PageCLogic>().state;

    return Container(
      color: Colors.orange,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.rootDelegate.toNamed(Routes.PAGE_D);
          },
          child: const Text('Goto PageD'),
        ),
      ),
    );
  }
}
