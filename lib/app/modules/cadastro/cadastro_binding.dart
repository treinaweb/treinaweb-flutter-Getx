import 'package:contador/app/data/provider/provider.dart';
import 'package:contador/app/data/repositories/cadastro_repository/repository.dart';
import 'package:contador/app/modules/cadastro/cadastro_controller.dart';
import 'package:get/get.dart';

class CadastroBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CadastroRepository(myAppClient: Get.find()));
    Get.put(CadastroController(cadastroRepository: Get.find()));
  }
}
