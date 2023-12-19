import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  /// 亮色
  static ThemeData light = ThemeData(
    fontFamily: "Montserrat",
    appBarTheme: const AppBarTheme(
      /// appBar 暗色
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      /// 背景透明
      backgroundColor: Colors.transparent,
      /// 取消阴影
      elevation: 0,
      /// 图标颜色
      iconTheme: IconThemeData(
        color:  Color(0xFF5F84FF)
      ),
      /// 标题
      titleTextStyle: TextStyle(
        color: Color(0xFF4D4D4D),
        fontSize: 24,
        fontWeight: FontWeight.w600
      )
    )
  );

  /// 暗色
  static ThemeData dark = ThemeData(
    fontFamily: "Montserrat",
    appBarTheme: const AppBarTheme(
      // appBar 亮色
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
  );

}