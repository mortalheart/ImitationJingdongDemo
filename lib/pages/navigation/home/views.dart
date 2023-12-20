import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/common/extension/ex_list.dart';
import 'package:imitation_jingdong/common/index.dart';
import 'package:imitation_jingdong/pages/index.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      id: "HomePage",
      init: Get.find<HomeController>(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("首页"),
          ),
          body: Center(
            child:<Widget>[
              ButtonWidget.primary(
                "其它皮肤",
                onTap: () {
                  controller.onThemeTopic('其它皮肤');
                },
              ).paddingAll(30.w),
              ButtonWidget.primary(
                "默认皮肤",
                backgroundColor: AppColors.antColor,
                onTap: () {
                  controller.onThemeTopic('默认皮肤');
                },
              ).paddingAll(30.w),
            ].toColumn(),
          ),
        );
      },
    );
  }

}