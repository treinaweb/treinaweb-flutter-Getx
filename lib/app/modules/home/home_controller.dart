import 'package:get/get.dart';

class HomeController extends GetxController {
  int count = 0;
  var count2 = 0.obs;

  void setValue() {
    count++;
    update();
  }

  void setValue2() {
    count2++;
  }
}
