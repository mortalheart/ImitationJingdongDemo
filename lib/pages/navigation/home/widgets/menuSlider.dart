import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/common/index.dart';
import 'package:imitation_jingdong/pages/index.dart';

Widget menuSlider(BuildContext context) {
  final controller = Get.find<HomeController>();
  return SliverToBoxAdapter(
    child: GetBuilder<HomeController>(
      init: controller,
      id: "home-menu",
      builder: (_) {
        return Container(
          height: 120.h,
          color: Colors.white,
        );
      },
    ),
  ).sliverPaddingTop(AppSpace.listRow);
}