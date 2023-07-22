import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getxstate/app/core/base/base_state.dart';
import 'package:getxstate/app/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(controller.name.value)),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              controller.trocarNome('João');
            },
            child: const Text('Trocar nome')),
      ),
    );
  }
}
