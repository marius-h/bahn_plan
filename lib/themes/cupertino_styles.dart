import 'package:bahn_plan/themes/cupertino_colors.dart';
import 'package:flutter/cupertino.dart';

class CupertinoStyles with CustomCupertinoColors {
  static const CupertinoThemeData light = CupertinoThemeData(
    brightness: Brightness.light,
  );

  static BoxDecoration textFieldDecoration = BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: CupertinoColors.lightBackgroundGray,
        style: BorderStyle.solid,
        width: 0.0,
      ),
    ),
  );

  static const Color appBackground = Color(0xffd0d0d0);
  static const Color scaffoldBackground = Color(0xfff0f0f0);
  static const Color searchBackground = Color(0xffe0e0e0);
  static const Color frostedBackground = Color(0xccf8f8f8);
  static const Color settingsMediumGray = Color(0xffc7c7c7);
  static const Color settingsItemPressed = Color(0xffd9d9d9);
  static const Color settingsLineation = Color(0xffbcbbc1);
  static const Color settingsBackground = Color(0xffefeff4);
  static const Color settingsGroupSubtitle = Color(0xff777777);
  static const Color transparentColor = Color(0x00000000);
}
