import 'package:get/get.dart';
import 'package:imitation_jingdong/common/index.dart';

class HomeController extends GetxController {
  HomeController();
  final themeList = [
    {
      "background": "#F2961F1",
      "primary": "#EC3E33",
      "primary2": "#D4382E",
      "warn": "#F35400",
      "success": "#2B9529",
      "danger": "#E73125",
      "title": "#F2961F1",
      "content": "#505560",
      "subtitle": "#8A8F9D",
      "tip": "#A2A6BA",
      "reversal": "#FFFFFF",
      "underline": "#F0F1F5",
      "border": "#DCDEE0",
      "card_bg": "#f5f7f9",
      "shadow": "#1F24262A",
      "gradient1": "#EC3E33|#FF7A5C",
      "gradient2": "#FFC8D7FF|#FFFBFCFF|#FFFFFFFF",
      "gradient3": "#FFF33A00|#FFFFA928"
    }
  ];
  Future<void> onThemeTopic(String s) async{
   /// 切换模式
    await ConfigService.to.switchThemedSkinModels(themeList[0]);
   ///  第一步先去判断是否开启系统外观模式或者暗黑模式
    ///  如果开启 改变背景颜色和主题颜色
    ///  如果没有开启，判断是否有主题皮肤
    ///  如果没有显示默认主题皮肤
    ///  如果有显示主题皮肤并
 }
 Future<void> onThemeTopic2(String s) async{
    /// 切换模式
    await ConfigService.to.switchThemeModel();
    ///  第一步先去判断是否开启系统外观模式或者暗黑模式
    ///  如果开启 改变背景颜色和主题颜色
    ///  如果没有开启，判断是否有主题皮肤
    ///  如果没有显示默认主题皮肤
    ///  如果有显示主题皮肤并
  }
}