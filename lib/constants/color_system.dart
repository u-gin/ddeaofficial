import 'dart:ui';

class ColorSystem {
  static Color colorFromHex(String colorCode) {
    final hexCode = colorCode.replaceAll('#', '');
    Color newColor = Color(int.parse('FF$hexCode', radix: 16));
    return newColor;
  }

  static Color primary = colorFromHex('#3F8FED');
  static Color primaryLight = colorFromHex('#DBE8F8');
  static Color secondary = colorFromHex('#3F8FED');
  static Color white = colorFromHex('#FFFFFF');
  static Color black = colorFromHex('#000000');
  static Color gray = colorFromHex('#EAEAEA');
  static Color copyLinkColour = colorFromHex('##CDCDCD');
  static Color hintTextColor = colorFromHex('#808080');
}
