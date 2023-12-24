import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/pages/index.dart';

Widget menuSlider(BuildContext context) {
  final controller = Get.find<HomeController>();
  return GetBuilder<HomeController>(
    init: controller,
    id: "home-menu",
    builder: (_) {
      return SliverToBoxAdapter(
        child: Container(),
      );
    },
  );
}