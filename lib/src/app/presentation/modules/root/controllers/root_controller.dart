import 'package:get/get.dart';
import 'package:getx_clean_architecture/src/app/core/base/base_view.dart';

class RootController extends BaseController {
  final count = 0.obs;


  @override
  void onClose() {}
  void increment() => count.value++;
}
