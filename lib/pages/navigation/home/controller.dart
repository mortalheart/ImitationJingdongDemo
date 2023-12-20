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
   /// 切换模式
    await ConfigService.to.switchThemeModel();
   ///  第一步先去判断是否开启系统外观模式或者暗黑模式
    ///  如果开启 改变背景颜色和主题颜色
    ///  如果没有开启，判断是否有主题皮肤
    ///  如果没有显示默认主题皮肤
    ///  如果有显示主题皮肤并
 }
}