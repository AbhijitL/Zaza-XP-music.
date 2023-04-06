import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

Future<Color> getImageColor(String url) async {
  Image img = Image.asset(url);
  return await _updatePaletteGenerator(img);
}

Future<Color> _updatePaletteGenerator(Image img) async {
  PaletteGenerator paletteGenerator = await PaletteGenerator.fromImageProvider(
    img.image,
  );
  return paletteGenerator.dominantColor!.color;
}
