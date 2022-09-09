import 'package:get/get.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/demo/demo_controller.dart';

class DemoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DemoController());
  }
}
