import 'package:get/get.dart';
import 'package:imitation_jingdong/common/index.dart';

class HomeController extends GetxController {
  HomeController();
  final themeList = [
    {
      "headBackground":"#F2F2F2",
      "bottomNavBackground":"#F2F2F2",
      "navFontSelectedColor":"#FD412E",
      "navFontColor":"#4D4D4D",
    }
  ];
  Future<void> onThemeTopic(String s) async{
   // await
    await ConfigService.to.switchThemeModel();
 }
}