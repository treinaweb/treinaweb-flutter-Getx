import 'package:contador/app/modules/cadastro/cadastro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CadastroPage extends GetView<CadastroController> {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cadastro ${controller.count}'),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.add)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Form(
                  child: Row(
                    children: const [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(labelText: 'Nome'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(labelText: 'Idade'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: context.width,
                height: context.height,
                child: ListView.builder(
                  itemBuilder: (ctx, i) {
                    return ListTile(
                      title: Text("$i"),
                      subtitle: Text('Minha idade é: $i'),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
