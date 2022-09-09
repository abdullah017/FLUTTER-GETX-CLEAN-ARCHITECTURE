import 'package:flutter/material.dart';
import 'package:getx_clean_architecture/src/app/core/base/base_view.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/demo/demo_controller.dart';

class DemoScreen extends BaseView<DemoController> {
  const DemoScreen({super.key});

  @override
  Widget vBuilder() => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          title: const Text('Internal Storage'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "DEMO",
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      );
}
