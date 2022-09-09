import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:getx_clean_architecture/src/app/core/base/base_view.dart';

class DemoController extends BaseController {
  RxBool isCategoriPageOpen = false.obs;

  void setCategoryPage(bool ck) {
    isCategoriPageOpen(ck);
  }
}
