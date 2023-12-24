import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imitation_jingdong/common/index.dart';

Widget tabList(BuildContext context) {
  return SliverPersistentHeader(
      pinned: false,
      delegate: SliverHeaderDelegate.fixedHeight(
      //固定高度
      height: 30,
      child:Container(
        color: Colors.redAccent,
        child: <Widget>[
          Container(
            width: 350.w,
            color: Colors.blue,
          ),
          Container(
            child: <Widget>[
              IconWidget.svg(
                AssetsSvg.classification,
                size: 20.w,
                color: Colors.white,
              ).paddingLeft(2).paddingRight(2),
              TextWidget(
                text: '分类',
                color: Colors.white,
                size: 13.sp,
                textAlign: TextAlign.center,
              )
            ].toRow(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ).paddingRight(AppSpace.listRow)
        ].toRow(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
      ),
  );
}