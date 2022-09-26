import 'package:get/get.dart';

import 'page_c_logic.dart';

class PageCBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageCLogic());
  }
}
