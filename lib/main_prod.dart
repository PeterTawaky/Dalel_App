import 'package:dalel_app/app/app.dart';
import 'package:dalel_app/flavors.dart';
import 'package:flutter/material.dart';

void main() async {
  await setUpProject();
  runApp(Dalel(config: ProdConfig()));
}
