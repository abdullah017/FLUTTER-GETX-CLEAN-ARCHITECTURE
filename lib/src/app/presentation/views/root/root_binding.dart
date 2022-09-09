import 'package:get/get.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/demo/demo_controller.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/home/home_controller.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/root/root_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RootController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => DemoController());
  }
}
