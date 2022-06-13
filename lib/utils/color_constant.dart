import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray51 = fromHex('#fafafa');

  static Color black9001a = fromHex('#1a000000');

  static Color red700 = fromHex('#db143d');

  static Color red800 = fromHex('#c72126');

  static Color deepPurple500 = fromHex('#5c42bd');

  static Color black9003f = fromHex('#3f000000');

  static Color gray50 = fromHex('#f7f7fa');

  static Color greenA700 = fromHex('#1cad63');

  static Color black900 = fromHex('#000000');

  static Color teal800 = fromHex('#007a54');

  static Color red70026 = fromHex('#26db143d');

  static Color black90040 = fromHex('#40000000');

  static Color deepPurpleA200 = fromHex('#942efa');

  static Color black90026 = fromHex('#26000000');

  static Color gray600 = fromHex('#757575');

  static Color gray400 = fromHex('#c4c4c4');

  static Color gray500 = fromHex('#a8a8a8');

  static Color gray901 = fromHex('#1c1c1f');

  static Color whiteA700A2 = fromHex('#a2ffffff');

  static Color gray900 = fromHex('#1c1c1c');

  static Color gray300 = fromHex('#e6e6e6');

  static Color gray100 = fromHex('#f2f2f2');

  static Color bluegray700 = fromHex('#455963');

  static Color bluegray400 = fromHex('#80858c');

  static Color deepPurple50026 = fromHex('#265c42bd');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo800 = fromHex('#293887');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
