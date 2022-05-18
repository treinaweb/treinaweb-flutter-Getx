import 'package:contador/app/data/provider/provider.dart';
import 'package:get/get.dart';

class MyApiClientBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyAppClient(), fenix: true);
  }
}
