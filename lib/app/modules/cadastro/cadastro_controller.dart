import 'package:contador/app/data/models/user_model.dart';
import 'package:contador/app/data/repositories/cadastro_repository/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CadastroController extends GetxController {
  final int count = Get.arguments;
  final nameController = TextEditingController();
  final idadeController = TextEditingController();
  final listUser = <UserModel>[].obs;

  final CadastroRepository _repository;
  CadastroController({required CadastroRepository cadastroRepository})
      : _repository = cadastroRepository;

  Future<void> addUser() async {
    final user = await _repository.saveUser(
        name: nameController.text, idade: int.parse(idadeController.text));

    if (user.id != null) {
      listUser.add(user);
    }
  }
}
