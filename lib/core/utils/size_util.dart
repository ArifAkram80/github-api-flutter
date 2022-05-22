import 'dart:math';

import 'package:flutter/material.dart';

///
/// Created by NieBin on 2018/12/26
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///

//  initilalise the size
//SizeUtil.size = MediaQuery.of(context).size;
//
class SizeUtil {
  static const DESIGN_WIDTH = 375.0;
  static const DESIGN_HEIGHT = 812.0;

  //logic size in device
  static Size? _logicSize;

  //device pixel radio.

  static get width {
    return _logicSize?.width;
  }

  static get height {
    return _logicSize?.height;
  }

  static set size(size) {
    _logicSize = size;
  }

  //@param w is the design w;
  static double getAxisX(double w) {
    return (w * width) / DESIGN_WIDTH;
  }

// the y direction
  static double getAxisY(double h) {
    return (h * height) / DESIGN_HEIGHT;
  }

  // diagonal direction value with design size s.
  static double getAxisBoth(double s) {
    return s *
        sqrt((width * width + height * height) /
            (DESIGN_WIDTH * DESIGN_WIDTH + DESIGN_HEIGHT * DESIGN_HEIGHT));
  }
}
