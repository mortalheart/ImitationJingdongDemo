
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/pages/index.dart';
import 'package:imitation_jingdong/system/index.dart';

import 'index.dart';

class RoutePages {
  static final RouteObserver<Route> observer = RouteGuard();
  static List<String> history = [];
  // 列表
  static List<GetPage> list = [
    GetPage(
      name: RouteNames.main, // app 首页
      page: () => const MainPage(),
      binding: MainBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 100),
    ),
    GetPage(
      name: RouteNames.systemSplash,
      binding: SplashBinding(),
      page: () => const SplashPage(),
    ),
  ];
}