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

Future<String> getRandomImageLoc() async {
  var images = [
    "assets/images/test_images/test_cover.JPG",
    "assets/images/test_images/test_cover1.JPG",
    "assets/images/test_images/test_cover2.JPG",
    "assets/images/test_images/test_cover3.JPG",
    "assets/images/test_images/test_cover4.JPG",
    "assets/images/test_images/test_cover5.JPG"
  ];
  var imageFilePath = await (images..shuffle()).first;
  return imageFilePath;
}
