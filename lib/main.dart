import 'package:flutter/material.dart';

import 'app.dart';
import 'screens/settings/components/settings_controller.dart';
import 'screens/settings/components/settings_service.dart';

void main() async {
  final settingsController = SettingsController(SettingsService());
  await settingsController.loadSettings();
  runApp(MyApp(settingsController: settingsController));
}
