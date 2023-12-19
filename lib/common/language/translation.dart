import 'dart:ui';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'index.dart';
class Translation extends Translations {
  /// 默认语言
  static const fallbackLocale = Locale("zh","CN");

  /// 支持语言列表
  static const supportedLocales = [
    Locale("en","US"),
    Locale("zh","CN"),
  ];

  /// 代理
  static const localizationsDelegates = [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  /// 语言代码对应的翻译文本
  @override
  Map<String,Map<String,String>> get keys =>{
    "en":localeEn,
    'zh': localeZh,
  };

}