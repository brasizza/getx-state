import 'package:get/get.dart';

class HomeController extends GetxController {
  final name = 'Marcus'.obs;

  void trocarNome(String s) {
    name.value = s;
  }
}
