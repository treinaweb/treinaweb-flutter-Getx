import 'package:contador/app/routes/app_routes.dart';
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

  void acessNextPage() {
    Get.toNamed(Routes.CADASTRO);
  }
}
