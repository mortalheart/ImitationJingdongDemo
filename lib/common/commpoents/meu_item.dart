
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imitation_jingdong/common/index.dart';

/// 菜单导航项
class MenuListItemWidget extends StatelessWidget {
  /// 菜单导数据
  final CategoryModel  category;

  /// 选中代码
  final int? selectId;

  /// tap 事件
  final Function(int categoryId)? onTap;

  const MenuListItemWidget({
    super.key,
    required this.category,
    this.onTap,
    this.selectId,
  });

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      // 图
      ImageWidget.url(
        category.image?.src ?? "", // 图片地址
        width: 52.w,
        height: 52.w,
      ),
      // 文字
      TextWidget.body1(
        category.name ?? "-", // 文字内容
        size: 14.sp,
        color: selectId == category.id ? AppColors.onSecondary : null, // 选中颜色
      ),
    ]
        .toColumn(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    )

    // padding 垂直间距
        .paddingVertical(AppSpace.button)

    // 背景色
        .backgroundColor(
      selectId == category.id
          ? AppColors.onSurfaceVariant
          : Colors.transparent,
    )
        .onTap(() => onTap?.call(category.id!));
  }
}
