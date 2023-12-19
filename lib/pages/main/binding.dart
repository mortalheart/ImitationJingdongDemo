import 'package:get/get.dart';
import 'package:imitation_jingdong/pages/index.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<StrollController>(() => StrollController());
    Get.lazyPut<NewProductController>(() => NewProductController());
    Get.lazyPut<CartController>(() => CartController());
    Get.lazyPut<MineController>(() => MineController());
    Get.lazyPut<MainController>(() => MainController());
  }
}