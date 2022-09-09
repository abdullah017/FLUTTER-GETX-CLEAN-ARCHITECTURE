import 'package:flutter/material.dart';
import 'package:getx_clean_architecture/src/app/core/base/base_controller.dart';

class RootController extends BaseController {
  int tabIndex = 0;
  int currentIndex = 0;
  Color inActiveColor = Colors.grey;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
