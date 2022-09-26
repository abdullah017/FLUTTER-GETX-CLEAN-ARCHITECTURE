import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_clean_architecture/src/app/core/base/base_controller.dart';

class DashboardController extends BaseController {
  final now = DateTime.now().obs;
  @override
  void onReady() {
    super.onReady();
    Timer.periodic(
     const Duration(seconds: 1),
      (timer) {
        now.value = DateTime.now();
      },
    );
  }
}
