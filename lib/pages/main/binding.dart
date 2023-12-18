import 'package:get/get.dart';
import 'package:imitation_jingdong/pages/index.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
  }
}