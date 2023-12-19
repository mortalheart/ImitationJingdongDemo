import 'package:get/get.dart';
import 'package:imitation_jingdong/system/index.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
          () => SplashController(),
    );
  }

}