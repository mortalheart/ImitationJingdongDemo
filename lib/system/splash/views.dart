
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'index.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  // 主视图
  Widget _buildView() {
   return Stack(
     children: [
       ConstrainedBox(
         constraints: const BoxConstraints.expand(),
         child: GestureDetector(
           onTap: () async => controller.adOnclick(),
           child: Image.network(
             controller.adObj['image'] ?? '',
             fit: BoxFit.fill,
           ),
         ),
       ),
       Positioned(
         top: ScreenUtil().statusBarHeight.w,
         right: 10.w,
         child: InkWell(
           onTap: () async => controller.jumpToMain(),
           child: Container(
               decoration: BoxDecoration(
                 color: Colors.black.withOpacity(0.2),
                 borderRadius: BorderRadius.circular(25.w),
               ),
               width: 70.w,
               padding: const EdgeInsets.all(5),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                    Text(
                     "跳过：",
                     style: TextStyle(
                         color: Colors.white,
                         fontSize: 12.sp,
                         fontWeight: FontWeight.w400),
                   ),
                   Obx(
                         () => Text(
                       "${controller.timeCount.value}s",
                       style: TextStyle(
                           color: Colors.white,
                           fontSize:15.sp,
                           fontWeight: FontWeight.w400),
                     ),
                   ),
                 ],
               )),
         ),
       ),
       Obx(() => controller.adObj['type']== 'ad_details' ? Positioned(
           left: (ScreenUtil().screenWidth - 170.w) *
               0.5,
           right: (ScreenUtil().screenWidth - 170.w) *
               0.5,
           bottom: 80.h,
           height: 40.h,
           child: InkWell(
             onTap: () async => controller.adOnclick() ,
             child: Container(
               alignment: Alignment.center,
               decoration: BoxDecoration(
                   color: Colors.black.withOpacity(0.2),
                   borderRadius: BorderRadius.circular(35.r)
               ),
               child: Text(
                 "查看详情",
                 style: TextStyle(
                     color: Colors.white,
                     fontSize:14.sp,
                     fontWeight: FontWeight.bold),
               ),
             ),
           )
       ):const Text('')
       ),
     ],
   );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      id: "splash",
      builder: (_) {
        return AnimatedOpacity(
            opacity: controller.isAnimationCompleted.value ? 0.0 : 1.0,
            duration: const Duration(seconds: 3), // 设置动画时长
        curve: Curves.easeInOut, // 设置动画曲线
          child: _buildView(),
        );
      },
    );
  }
}