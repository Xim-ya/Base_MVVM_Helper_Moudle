import 'package:get/get.dart';

class SampleViewModel extends GetxController {
  RxInt count = 0.obs;

  void increaseCount() {
    count(count.value + 1);
  }

  @override
  void onInit() {
    super.onInit();
    print('SAMPLE VIEWMODEL INITIALIZED');
  }
}
