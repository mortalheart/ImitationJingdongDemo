import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imitation_jingdong/common/index.dart';


enum IconWidgetType { icon, svg, image, url }

/// 图标组件
class IconWidget extends StatelessWidget {
  /// 图标类型
  final IconWidgetType type;

  /// 图标数据
  final IconData? iconData;

  /// assets 路径
  final String? assetName;

  /// 图片 url
  final String? imageUrl;

  /// 尺寸
  final double? size;

  /// 宽
  final double? width;

  /// 高
  final double? height;

  /// 颜色
  final Color? color;

  /// 是否小圆点
  final bool? isDot;

  /// Badge 文字
  final String? badgeString;

  /// 图片 fit
  final BoxFit? fit;

  const IconWidget({
    super.key,
    this.type = IconWidgetType.icon,
    this.size,
    this.width,
    this.height,
    this.color,
    this.iconData,
    this.isDot,
    this.badgeString,
    this.assetName,
    this.imageUrl,
    this.fit,
  });

  IconWidget.icon(
      this.iconData, {
        super.key,
        this.type = IconWidgetType.icon,
        this.size = 24,
        this.width,
        this.height,
        this.color,
        this.isDot,
        this.badgeString,
        this.assetName,
        this.imageUrl,
        this.fit,
      }) {
    return;
  }

  IconWidget.image(
      this.assetName, {
        super.key,
        this.type = IconWidgetType.image,
        this.size = 24,
        this.width,
        this.height,
        this.color,
        this.iconData,
        this.isDot,
        this.badgeString,
        this.imageUrl,
        this.fit,
      }) {
    return;
  }

  IconWidget.svg(
      this.assetName, {
        super.key,
        this.type = IconWidgetType.svg,
        this.size = 24,
        this.width,
        this.height,
        this.color,
        this.iconData,
        this.isDot,
        this.badgeString,
        this.imageUrl,
        this.fit,
      }) {
    return;
  }

  IconWidget.url(
      this.imageUrl, {
        super.key,
        this.type = IconWidgetType.url,
        this.size = 24,
        this.width,
        this.height,
        this.color,
        this.iconData,
        this.isDot,
        this.badgeString,
        this.assetName,
        this.fit,
      }) {
    return;
  }

  @override
  Widget build(BuildContext context) {
    Widget? icon;
    switch (type) {
      case IconWidgetType.icon:
        icon = Icon(
          iconData,
          size: size,
          color: color ?? AppColors.primary,
        );
        break;
      case IconWidgetType.svg:
        /*
        * BlendMode.clear：清除颜色。
        BlendMode.src：只显示图像本身，忽略颜色。
        BlendMode.dst：只显示颜色，忽略图像本身。
        BlendMode.srcOver：将图像放在颜色之上。
        BlendMode.dstOver：将颜色放在图像之上。
        BlendMode.srcIn：只显示图像与颜色重叠的部分。
        BlendMode.dstIn：只显示颜色与图像重叠的部分。
        BlendMode.srcOut：只显示图像与颜色不重叠的部分。
        BlendMode.dstOut：只显示颜色与图像不重叠的部分。
        BlendMode.plus：将图像和颜色相加。
        BlendMode.modulate：将图像和颜色进行调制。
        BlendMode.screen：通过颜色的亮度增强图像。
        BlendMode.overlay：叠加模式，根据颜色的亮度调整图像。
         */
        icon = SvgPicture.asset(
          assetName!,
          width: width ?? size,
          height: height ?? size,
          fit: fit ?? BoxFit.contain,
          colorFilter:  ColorFilter.mode(color ?? AppColors.outline, BlendMode.srcIn),
        );
        break;
      case IconWidgetType.image:
        icon = Image.asset(
          assetName!,
          width: width ?? size,
          height: height ?? size,
          color: color,
          fit: fit ?? BoxFit.contain,
        );
        break;
      case IconWidgetType.url:
        icon = Image.network(
          imageUrl!,
          width: width ?? size,
          height: height ?? size,
          color: color,
          fit: fit ?? BoxFit.contain,
        );
        break;
      default:
        return const SizedBox();
    }





    // 图标
    return icon;
  }
}