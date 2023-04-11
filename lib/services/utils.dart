import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import '../constants.dart';

Future<Color> getImageColor(String url) async {
  Image img = Image.network(url);
  return await _updatePaletteGenerator(img);
}

Future<Color> _updatePaletteGenerator(Image img) async {
  PaletteGenerator paletteGenerator = await PaletteGenerator.fromImageProvider(
    img.image,
    timeout: const Duration(seconds: 30),
  );
  return paletteGenerator.dominantColor!.color;
}

String formatedTime({required int timeInSecond}) {
  int sec = timeInSecond % 60;
  int min = (timeInSecond / 60).floor();
  String minute = min.toString().length <= 1 ? "0$min" : "$min";
  String second = sec.toString().length <= 1 ? "0$sec" : "$sec";
  return "$minute:$second";
}
