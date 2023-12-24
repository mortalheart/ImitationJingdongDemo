
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/common/index.dart';
import 'package:imitation_jingdong/pages/index.dart';

Widget banner(BuildContext context){
 final controller = Get.find<HomeController>();
  return GetBuilder<HomeController>(
      init: controller,
      id: "home_banner",
      builder: (_) {
        return controller.bannerItems.isNotEmpty?CarouselWidget(
          items: controller.bannerItems,
          currentIndex: controller.bannerCurrentIndex,
          onPageChanged: controller.onChangeBanner,
          height: 160.w,
        ):Container();
      })
      .clipRRect(all: AppSpace.button)
      .sliverToBoxAdapter()
      .sliverPaddingHorizontal(AppSpace.listRow).sliverPaddingVertical(AppSpace.listRow);
}