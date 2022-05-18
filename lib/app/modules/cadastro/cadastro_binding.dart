import 'package:contador/app/modules/cadastro/cadastro_controller.dart';
import 'package:get/get.dart';

class CadastroBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CadastroController());
  }
}
