import 'package:contador/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  @override
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    // final controller = HomeController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.setValue,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          controller.count.toString(),
          style: TextStyle(fontSize: 100),
        ),
      ),
    );
  }
}
