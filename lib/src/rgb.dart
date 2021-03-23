import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'base_color.dart';

class RGB extends BaseColor {
  int r;
  int g;
  int b;

  RGB({
    @required this.r,
    @required this.g,
    @required this.b,
  });

  RGB.fromHex(String hex) {
    final values = hex.replaceAll('#', '').split('');
    r = int.parse(values[0].toString() + values[1].toString(), radix: 16);
    g = int.parse(values[2].toString() + values[3].toString(), radix: 16);
    b = int.parse(values[4].toString() + values[5].toString(), radix: 16);
  }

  @override
  String toHex() {
    Function toHex = (int x) {
      var hex = x.toRadixString(16);
      return hex.length == 1 ? '0' + hex : hex;
    };
    return "#" + toHex(r) + toHex(g) + toHex(b);
  }

  @override
  String toString() {
    return '$r, $g, $b';
  }

  @override
  bool operator==(Object color) => super == color;
}
