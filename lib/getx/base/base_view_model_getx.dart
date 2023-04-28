import 'package:get/get.dart';

abstract class BaseViewModel extends GetxController {
  final loading = false.obs;

  void routeBack() {
    Get.back();
  }
}
