import 'package:get/get.dart';
import 'package:getx_clean_architecture/src/app/core/routes/routes_name.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/demo/demo_binding.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/demo/demo_view.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/home/home_binding.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/home/home_view.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/root/root_binding.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/root/root_view.dart';

class Pages {
  static List<GetPage> pages() {
    return [
      GetPage(
          name: RouterName.root,
          page: () => const RootView(),
          binding: RootBinding()),
      GetPage(
          name: RouterName.home,
          page: () => const HomeScreen(),
          binding: HomeBinding()),
      GetPage(
          name: RouterName.test,
          page: () => const DemoScreen(),
          binding: DemoBinding()),
    ];
  }
}
