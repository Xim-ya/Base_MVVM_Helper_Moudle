import 'package:basescreen_baseviewmodel/getx/base/base_screen_getx.dart';
import 'package:basescreen_baseviewmodel/getx/sample_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SampleScreen extends BaseScreen<SampleViewModel> {
  const SampleScreen({Key? key}) : super(key: key);

  @override
  bool get wrapWithSafeArea => false;

  @override
  Widget? get buildFloatingActionButton => FloatingActionButton(
        onPressed: vm.increaseCount,
        child: const Icon(Icons.plus_one),
      );

  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child: Text(
        vm.count.string,
        style: context.textTheme.headlineLarge,
      ),
    );
  }
}
