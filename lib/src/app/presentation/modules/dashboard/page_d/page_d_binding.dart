import 'package:get/get.dart';

import 'page_d_logic.dart';

class PageDBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageDLogic());
  }
}
