import 'package:contador/app/data/models/user_model.dart';

abstract class ICadastroRepository {
  Future<UserModel> saveUser({required String name, required int idade});
}
