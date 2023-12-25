import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/common/index.dart';
import 'package:imitation_jingdong/pages/index.dart';

Widget homeHeader(BuildContext context) {
  return SliverPersistentHeader(
    pinned: true,
    delegate: SliverHeaderDelegate(
      maxHeight: 70 + MediaQuery.viewPaddingOf(context).top,
      minHeight: 70 + MediaQuery.viewPaddingOf(context).top,
      child: Container(
        color: Colors.redAccent,
        child: <Widget>[
          <Widget>[
             Container(
                width: 75.w,
                height: 38.h,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
              ),
            <Widget>[
               Container(
                  width: 35.w,
                  height: 38.h,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                  ),
                ),
              SizedBox(width: 15.w,),
             Container(
                  width: 35.w,
                  height: 38.h,
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                  ),
                ),
            ].toRow(),
          ].toRow(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start
          ).padding(horizontal:  AppSpace.card,vertical:  MediaQuery.viewPaddingOf(context).top -  AppSpace.card),
          Positioned(
            bottom: MediaQuery.viewPaddingOf(context).bottom + AppSpace.listItem,
            child: Container(
              width: 394.w,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: <Widget>[
                Container(
                  width: 25.w,
                  height: 25.h,
                  color: Colors.redAccent,
                ),
                Expanded(
                  flex: 1,
                  child:Container(
                    height: 40.h,
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      highlightColor: Colors.transparent, // 透明色
                      splashColor: Colors.transparent, // 透明色
                      child: buildMarqueeWidget(),
                    ),
                  ).paddingHorizontal(AppSpace.listRow),
                ),
               <Widget>[
                 Container(
                   width: 25.w,
                   height: 25.h,
                   color: Colors.redAccent,
                 ),
                 SizedBox(
                   width: 1.w,
                   height: 25.h,
                   child: const DecoratedBox(
                     decoration: BoxDecoration(color: Colors.black12),
                   ),
                 ).paddingHorizontal(AppSpace.listView),
                 Container(
                   width: 25.w,
                   height: 25.h,
                   color: Colors.redAccent,
                 ),
               ].toRow(
                   mainAxisSize: MainAxisSize.min,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center
               )
              ].toRow(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center
              ).paddingHorizontal(AppSpace.listRow),
            ).paddingHorizontal(AppSpace.listRow),
          )
        ].toStack(
          alignment: Alignment.center,
          fit: StackFit.expand,
        ),
      ),

    ),

  );
}

MarqueeWidget buildMarqueeWidget() {
  List itemStr = Get.find<HomeController>().searchList;
  ///上下轮播 安全提示
  return MarqueeWidget(
    //子Item构建器
    itemBuilder: (BuildContext context, int index) {
      //通常可以是一个 Text文本
      return Text(
        itemStr.isNotEmpty?itemStr[index]["title"]:'搜索商品',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 14.sp,
          color: Colors.black54,
          height: 2.0, //1倍行高
        ),

      );
    },
    //循环的提示消息数量
    count: itemStr.length,
  );
}