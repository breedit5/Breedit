import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Svg images
SvgPicture appIcon(String image) {
  return SvgPicture.asset(image, height: 20);
}

// Png and Jpg images
image(String path) => Image.asset(path, width: 40);
