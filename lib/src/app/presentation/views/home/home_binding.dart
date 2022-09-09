import 'package:get/get.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }

}