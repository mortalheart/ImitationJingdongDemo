import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/common/index.dart';
import 'package:imitation_jingdong/pages/index.dart';

Widget menuSlider(BuildContext context) {
  final controller = Get.find<HomeController>();
  List<MenuRootEntity> menuData = controller.menuList
      .map((e) => MenuRootEntity(
    menuIcon: e['menuIcon'],
    menuCode: e['menuCode'],
    menuName: e['menuName'],
    // h5url: e.h5url,
  ))
      .toList();
  return PageMenu(
    menuDataList: menuData,
    rowCount: 2,
  ).sliverToBoxAdapter().sliverPaddingTop(AppSpace.listRow);
}