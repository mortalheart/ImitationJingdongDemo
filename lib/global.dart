import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/common/index.dart';
class Global {
  static Future<void> init() async {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized(); // 等待Flutter初始化完成
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    /// 系统样式
    systemStyle();

    /// 工具类
    await Storage().init();
    Loading();

    /// 初始化服务，Get.put 方式直接注入
    Get.put<ConfigService>(ConfigService());
  }

  static void systemStyle() {
    if (GetPlatform.isMobile) {
      // 屏幕方向 竖直上
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    }
    if (GetPlatform.isAndroid) {
      // 去除顶部系统下拉和底部系统按键
      // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
      // 去掉底部系统按键
      // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      //     overlays: [SystemUiOverlay.bottom]);

      // 自定义样式
      SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
        // 顶部状态栏颜色
        statusBarColor: Colors.transparent,
        // 该属性仅用于 iOS 设备顶部状态栏亮度
        statusBarBrightness: Brightness.light,
        // 顶部状态栏图标的亮度
        statusBarIconBrightness: Brightness.dark,

        // 底部状态栏与主内容分割线颜色
        systemNavigationBarDividerColor: Colors.transparent,
        // 底部状态栏颜色
        systemNavigationBarColor: Colors.white,
        // 底部状态栏图标样式
        systemNavigationBarIconBrightness: Brightness.dark,
      );
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }
}