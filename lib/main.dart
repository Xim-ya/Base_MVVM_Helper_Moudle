import 'package:basescreen_baseviewmodel/getx/sample_screen.dart';
import 'package:basescreen_baseviewmodel/getx/sample_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BaseScreen BaseViewModel Guide',
      theme: ThemeData(),
      initialBinding: AppBinding(),
      home: const SampleScreen(),
    );
  }
}

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SampleViewModel(), fenix: true);
  }
}
