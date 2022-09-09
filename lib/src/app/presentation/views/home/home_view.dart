import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/src/app/core/base/base_view.dart';
import 'package:getx_clean_architecture/src/app/core/routes/routes_name.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/home/home_controller.dart';

class HomeScreen extends BaseView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget vBuilder() => Scaffold(
        appBar: AppBar(
          title: const Text("HELLO"),
          automaticallyImplyLeading: true,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("heloooo"),
              ElevatedButton(
                child: const Text("123"),
                onPressed: () async {
                  Get.toNamed(RouterName.test);
                },
              ),
            ],
          ),
        ),
      );
}
