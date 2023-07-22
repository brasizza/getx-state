import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class BaseState<T extends StatefulWidget, C extends GetxController> extends State<T> {
  late final C controller;

  @override
  void initState() {
    super.initState();
    controller = Get.find<C>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onReady();
    });
  }

  void onReady() {}
}
