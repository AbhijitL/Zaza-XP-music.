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
  );
  return paletteGenerator.dominantColor!.color;
}

Future<String> getRandomImageLoc() async {
  var imageFilePath = await (images..shuffle()).first;
  return imageFilePath;
}
