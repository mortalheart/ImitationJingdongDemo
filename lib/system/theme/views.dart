import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/system/index.dart';

class ThemePage extends GetView<ThemeController> {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      id:"Theme",
      init: Get.find<ThemeController>(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("主题换肤"),
          ),
        );
      },
    );
  }

}