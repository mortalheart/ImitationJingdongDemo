import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imitation_jingdong/common/index.dart';

Widget homeHeader(BuildContext context) {
  return SliverPersistentHeader(
    pinned: true,
    delegate: SliverHeaderDelegate(
      maxHeight: 85 + MediaQuery.viewPaddingOf(context).top,
      minHeight: 85 + MediaQuery.viewPaddingOf(context).top,
      child: Container(
        color: Colors.black12,
        child: <Widget>[
          <Widget>[
             Container(
                width: 75.w,
                height: 40.h,
                decoration: const BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
              ),
            <Widget>[
               Container(
                  width: 35.w,
                  height: 40.h,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                  ),
                ),
              SizedBox(width: 15.w,),
             Container(
                  width: 35.w,
                  height: 40.h,
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                  ),
                ),
            ].toRow(),
          ].toRow(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start
          ).paddingHorizontal(AppSpace.card).paddingVertical(MediaQuery.viewPaddingOf(context).top + AppSpace.listView),
          Positioned(
            bottom: MediaQuery.viewPaddingOf(context).bottom + 10.w,
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
                    child: const InkWell(
                      highlightColor: Colors.transparent, // 透明色
                      splashColor: Colors.transparent, // 透明色
                      child: Text(
                        "搜索买菜"
                      ),
                    ),
                  ).paddingHorizontal(AppSpace.listRow),
                ),
               <Widget>[
                 Container(
                   width: 25.w,
                   height: 25.h,
                   color: Colors.redAccent,
                 ),
                 SizedBox(width: 15.w,),
                 Container(
                   width: 25.w,
                   height: 25.h,
                   color: Colors.redAccent,
                 ),
               ].toRow()
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