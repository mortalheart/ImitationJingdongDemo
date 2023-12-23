import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/common/index.dart';
import 'package:package_info_plus/package_info_plus.dart';


/// 配置服务
class ConfigService extends GetxService {
  // 这是一个单例写法
  static ConfigService get to => Get.find();
  /// 获取程序信息包
  PackageInfo? _platform;
  String get version => _platform?.version ?? '-';

  /// 多语言
  Locale locale = PlatformDispatcher.instance.locale;

  /// Theme 主题
  final RxBool _isDarkModel = Get.isDarkMode.obs;
  /// 模式
  bool get isDarkModel => _isDarkModel.value;
  /// 主题皮肤
  final  RxBool  isThemedSkinsModel = true.obs;

  /// 是否首次打开
  bool get isFirstOpen => Storage().getBool(Constants.storageFirstOpen);

  @override
  void onReady() {
    super.onReady();
    getPlatform();
    initLocale();
    initTheme();
  }

  Future<void> getPlatform() async {
    _platform = await PackageInfo.fromPlatform();
  }

  // 标记已打开app
  void setAlreadyOpen() {
    Storage().setBool(Constants.storageFirstOpen, true);
  }

  // 读取是否是暗黑模式
  void initTheme() {
    var themeCode = Storage().getString(Constants.storageThemeModeCode);
    _isDarkModel.value = themeCode == "dark" ? true : false;
    Get.changeTheme(
      themeCode == "dark" ? AppTheme.dark : AppTheme.light,
    );
  }

  // 切换  主题 模式
  Future<void> switchThemeModel() async {
    _isDarkModel.value = !_isDarkModel.value;
    Get.changeTheme(
      _isDarkModel.value == true ? AppTheme.dark : AppTheme.light,
    );
    await Storage().setString(Constants.storageThemeModeCode,
        _isDarkModel.value == true ? "dark" : "light");
  }
// 切换  主题 皮肤
  Future<void> switchThemedSkinModels(Map<String, String> themeData) async {
    _isDarkModel.value = false;
    ThemeData theme = ThemeData(
      brightness:_isDarkModel.value ? Brightness.dark : Brightness.light,
      scaffoldBackgroundColor: AppColors.string2Color(themeData['background']!),
      primaryColor: AppColors.string2Color(themeData['primary']!),
      indicatorColor: AppColors.string2Color(themeData['success']!),
      highlightColor: AppColors.string2Color(themeData['danger']!),
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(color: AppColors.string2Color(themeData['title']!)),
      ),
      shadowColor: AppColors.string2Color(themeData['shadow']!),
      canvasColor: AppColors.string2Color(themeData['reversal']!),
      dividerColor: AppColors.string2Color(themeData['border']!),
    );
    Get.changeTheme(theme);
    var themeCode = Storage().getString(Constants.storageThemeModeCode);
    await Storage().setString(Constants.storageThemeCode,
        isThemedSkinsModel.value == true ? themeCode : "Skin");
  }
  // 初始语言
  void initLocale() {
    var langCode = Storage().getString(Constants.storageLanguageCode);
    if (langCode.isEmpty) return;
    var index = Translation.supportedLocales.indexWhere((element) {
      return element.languageCode == langCode;
    });
    if (index < 0) return;
    locale = Translation.supportedLocales[index];
  }

  // 更改语言
  void onLocaleUpdate(Locale value) {
    locale = value;
    Get.updateLocale(value);
    Storage().setString(Constants.storageLanguageCode, value.languageCode);
  }
}
