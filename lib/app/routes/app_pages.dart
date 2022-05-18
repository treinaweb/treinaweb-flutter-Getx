import 'package:contador/app/modules/cadastro/cadastro_binding.dart';
import 'package:contador/app/modules/cadastro/cadastro_page.dart';
import 'package:contador/app/modules/home/home_binding.dart';
import 'package:contador/app/modules/home/home_page.dart';
import 'package:contador/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPage {
  AppPage._();

  static final routes = <GetPage>[
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
        name: Routes.CADASTRO,
        page: () => const CadastroPage(),
        binding: CadastroBinding()),
  ];
}
