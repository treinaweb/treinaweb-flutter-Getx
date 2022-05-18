import 'package:contador/app/data/repositories/cadastro_repository/repository.dart';
import 'package:get/get.dart';

class CadastroController extends GetxController {
  final int count = Get.arguments;

  final CadastroRepository _repository;
  CadastroController({required CadastroRepository cadastroRepository})
      : _repository = cadastroRepository;

  Future<void> addUser() async {
    _repository.saveUser(name: 'Ariel', idade: 29);
  }
}
