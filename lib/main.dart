import 'package:dalel_app/app/my_app.dart';
import 'package:dalel_app/core/utils/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  _setUpProject();
  runApp(Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}

_setUpProject() {
  WidgetsFlutterBinding.ensureInitialized();
  DeviceUtility.lockOrientations();
  DeviceUtility.hideStatusBar;
}
