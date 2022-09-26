// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'page_d_logic.dart';

class PageDPage extends StatelessWidget {
  const PageDPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<PageDLogic>();
    final state = Get.find<PageDLogic>().state;

    return Container(
      color: Colors.pink,
      child: Column(
        children: const [],
      ),
    );
  }
}
