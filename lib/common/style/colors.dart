import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// 应用颜色
class AppColors {
  /// *******************************************
  /// 自定义 颜色
  /// *******************************************
  static Color get backgroundColor => const Color(0xFFF4F7FE);
  static Color get appBarBackgroundColor => const Color(0xFFF4F7FE);
  static Color get appBarText => const Color(0xFFA7AAB1);
  static Color get tabBorderColor => const Color(0xFF2961F1);
  static Color get antBackgroundColor => const Color(0xFFE6EBFA);
  static Color get antColor => const Color(0xFF4269ED);
  static Color get tabBtbBackgroundColor=> const Color(0xFFE9ECFD);
  /// 强调
  static Color get highlight =>
      Get.isDarkMode ? const Color(0xFFFFB4A9) : const Color(0xFFF77866);

  static Color get bottomBackgroundColor=> const Color(0xFFF2F2F2);

  /// Success
  /// Warning
  /// Danger
  /// Info

  /// *******************************************
  /// 系统主题
  /// *******************************************

  static Color get background => Get.theme.colorScheme.background;

  static Brightness get brightness => Get.theme.colorScheme.brightness;

  static Color get error => Get.theme.colorScheme.error;

  static Color get errorContainer => Get.theme.colorScheme.errorContainer;

  static Color get inversePrimary => Get.theme.colorScheme.inversePrimary;

  static Color get inverseSurface => Get.theme.colorScheme.inverseSurface;

  static Color get onBackground => Get.theme.colorScheme.onBackground;

  static Color get onError => Get.theme.colorScheme.onError;

  static Color get onErrorContainer => Get.theme.colorScheme.onErrorContainer;

  static Color get onInverseSurface => Get.theme.colorScheme.onInverseSurface;

  static Color get onPrimary => Get.theme.colorScheme.onPrimary;

  static Color get onPrimaryContainer =>
      Get.theme.colorScheme.onPrimaryContainer;

  static Color get onSecondary => Get.theme.colorScheme.onSecondary;

  static Color get onSecondaryContainer =>
      Get.theme.colorScheme.onSecondaryContainer;

  static Color get onSurface => Get.theme.colorScheme.onSurface;

  static Color get onSurfaceVariant => Get.theme.colorScheme.onSurfaceVariant;

  static Color get onTertiary => Get.theme.colorScheme.onTertiary;

  static Color get onTertiaryContainer =>
      Get.theme.colorScheme.onTertiaryContainer;

  static Color get outline => Get.theme.colorScheme.outline;

  static Color get primary => Get.theme.colorScheme.primary;

  static Color get primaryContainer => Get.theme.colorScheme.primaryContainer;

  static Color get secondary => Get.theme.colorScheme.secondary;

  static Color get secondaryContainer =>
      Get.theme.colorScheme.secondaryContainer;

  static Color get shadow => Get.theme.colorScheme.shadow;

  static Color get surface => Get.theme.colorScheme.surface;

  static Color get surfaceVariant => Get.theme.colorScheme.surfaceVariant;

  static Color get tertiary => Get.theme.colorScheme.tertiary;

  static Color get tertiaryContainer => Get.theme.colorScheme.tertiaryContainer;
}