import 'package:flutter/material.dart';
import 'package:getx_clean_architecture/src/app/core/base/base_view.dart';
import 'package:getx_clean_architecture/src/app/core/widget/bottom_navbar.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/demo/demo_view.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/home/home_view.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/root/root_controller.dart';

class RootView extends BaseView<RootController> {
  const RootView({super.key});

  @override
  Widget vBuilder() => Scaffold(
        bottomNavigationBar: CustomAnimatedBottomBar(
          containerHeight: 70,
          backgroundColor: Colors.white,
          selectedIndex: controller.tabIndex,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          onItemSelected: controller.changeTabIndex,
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: const Icon(Icons.apps),
              title: const Text('Home'),
              activeColor: Colors.green,
              inactiveColor: controller.inActiveColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.storage_sharp),
              title: const Text('Internal'),
              activeColor: Colors.purpleAccent,
              inactiveColor: controller.inActiveColor,
              textAlign: TextAlign.center,
            ),
          
          ],
        ),
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [HomeScreen(), DemoScreen(),],
        ),
      );
}
