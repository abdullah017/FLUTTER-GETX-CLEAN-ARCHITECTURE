import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/src/app/core/routes/app_pages.dart';
import 'base_controller.dart';
export 'base_controller.dart';

/// [Example]
///
/// class HomeView extends BaseView<HomeController> {
///
///   @override
///   Widget vBuilder() => Scaffold(
///     appBar: AppBar(
///       title: Text("Title"),
///     ),
///     body: Container(
///       child: Center(
///         child: Text("Hello, world",
///           style: AppThemes().textTheme.bodyText1,
///         ),
///       ),
///     ),
///   );
///
/// }
///
/// RECOMENDED FOR you'r [Screen] / [View] / [Page].
/// Please extends to your [Screen] / [View] / [Page].
/// read the [Example] above.
///
abstract class BaseView<T extends BaseController> extends StatelessWidget {
  const BaseView({
    Key? key,
  }) : super(key: key);

  final String? tag = null;
  final String? pageTitle = null;

  T get controller => GetInstance().find<T>(tag: tag);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, currentRoute) {
        //This router outlet handles the appbar and the bottom navigation bar
        final currentLocation = currentRoute?.location;
        var currentIndex = 0;
        if (currentLocation?.startsWith(Routes.SETTINGS) == true) {
          currentIndex = 1;
        
        }
        // if (currentLocation?.startsWith(Routes.PROFILE) == true) {
        //   currentIndex = 1;
        // }
        return GetBuilder<T>(builder: (controller) {
          return Scaffold(
            body: vBuilder(),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (value) {
                switch (value) {
                  case 0:
                    delegate.toNamed(Routes.HOME);
                    // Get.to(
                    //   HomeView(),
                    //   binding: HomeBinding(),
                    // );
                    break;
                  case 1:
                    delegate.toNamed(Routes.SETTINGS);

                    // Get.to(
                    //   SettingsView(),
                    //   binding: SettingsBinding(),
                    // );
                    break;
                  // case 2:
                  //   delegate.toNamed(Routes.PRODUCTS);
                  //   break;
                  default:
                }
              },
              items: const [
                // _Paths.HOME + [Empty]
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                // _Paths.HOME + Routes.PROFILE
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_box_rounded),
                  label: 'Profile',
                ),
                // _Paths.HOME + _Paths.PRODUCTS
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_box_rounded),
                  label: 'Products',
                ),
              ],
            ),
          );
        });
      },
    );
  }

  Widget vBuilder();
}
