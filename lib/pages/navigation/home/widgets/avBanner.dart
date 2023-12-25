import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/common/index.dart';
import 'package:imitation_jingdong/pages/index.dart';

Widget avBanner(BuildContext context) {
  final controller = Get.find<HomeController>();
  return GetBuilder<HomeController>(
    init: controller,
    id:'av_banner',
    builder: (_){
      return Container(
          height: 80,
          color: CupertinoColors.white,
      );
    },
  ).clipRRect(all: AppSpace.button)
      .sliverToBoxAdapter()
      .sliverPaddingHorizontal(AppSpace.listRow).sliverPaddingTop(AppSpace.listRow);
}