import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/src/app/core/routes/app_pages.dart';
import '../controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        //final title = current?.location;
        return Scaffold(
          appBar: AppBar(
            title: const Text(''),
            centerTitle: true,
          ),
          body: GetRouterOutlet(
            initialRoute: Routes.DASHBOARD,
          ),
        );
      },
    );
  }
}
