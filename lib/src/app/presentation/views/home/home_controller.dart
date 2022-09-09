import 'package:flutter/material.dart';
import 'package:getx_clean_architecture/src/app/core/base/base_view.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/demo/demo_view.dart';
import 'package:getx_clean_architecture/src/app/presentation/views/home/home_view.dart';

class HomeController extends BaseController {


List<Widget> data = [const HomeScreen(), const DemoScreen()];

}
