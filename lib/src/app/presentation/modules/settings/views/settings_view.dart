import 'package:flutter/material.dart';
import 'package:getx_clean_architecture/src/app/core/base/base_view.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends BaseView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget vBuilder() {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'SETTINGS is working',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
