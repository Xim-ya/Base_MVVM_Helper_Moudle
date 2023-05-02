import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseScreen<T extends GetxController> extends GetView<T> {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!vm.initialized) {
      initViewModel();
    }

    return Container(
      color: unSafeAreaColor,
      child: wrapWithSafeArea
          ? SafeArea(
              top: setTopSafeArea,
              bottom: setBottomSafeArea,
              child: _buildScaffold(context),
            )
          : _buildScaffold(context),
    );
  }

  Widget _buildScaffold(BuildContext context) {
    return Scaffold(
      extendBody: extendBodyBehindAppBar,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      appBar: buildAppBar(context),
      body: buildScreen(context),
      backgroundColor: screenBackgroundColor,
      bottomNavigationBar: buildBottomNavigationBar(context),
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButton: buildFloatingActionButton,
    );
  }

  @protected
  Color? get unSafeAreaColor => Colors.black;

  @protected
  bool get resizeToAvoidBottomInset => true;

  @protected
  Widget? get buildFloatingActionButton => null;

  @protected
  FloatingActionButtonLocation? get floatingActionButtonLocation => null;

  @protected
  bool get extendBodyBehindAppBar => false;

  @protected
  Color? get screenBackgroundColor => Colors.white;

  @protected
  Widget? buildBottomNavigationBar(BuildContext context) => null;

  @protected
  Widget buildScreen(BuildContext context);

  @protected
  PreferredSizeWidget? buildAppBar(BuildContext context) => null;

  @protected
  bool get wrapWithSafeArea => true;

  @protected
  bool get setBottomSafeArea => true;

  @protected
  bool get setTopSafeArea => true;

  @protected
  void initViewModel() {
    vm.initialized;
  }

  @protected
  T get vm => controller;
}
