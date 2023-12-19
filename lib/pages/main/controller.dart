import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  MainController();
  int currentIndex = 0;
  // 分页管理
  final PageController pageController = PageController();

  onJumpToPage(int p1) {
    pageController.jumpToPage(p1);
  }

  void onIndexChanged(int value) {
    currentIndex = value;
    update(['navigation']);
  }
}