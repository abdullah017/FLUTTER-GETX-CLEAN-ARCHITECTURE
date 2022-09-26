import 'package:get/get.dart';
import 'package:getx_clean_architecture/src/app/core/base/base_controller.dart';

class SettingsController extends BaseController {


  final count = 0.obs;


  @override
  void onClose() {}
  void increment() => count.value++;
}
