import 'package:flutter/material.dart';

class ColorModel {
  int red;
  int green;
  int blue;

  ColorModel({this.red = 0, this.green = 0, this.blue = 0});
}

class ColorProvider with ChangeNotifier {
  final ColorModel _color = ColorModel();

  Color get color => Color.fromRGBO(_color.red, _color.green, _color.blue, 1);

  int get red => _color.red;
  int get green => _color.green;
  int get blue => _color.blue;

  void updateRed(int value) {
    _color.red = value;
    notifyListeners();
  }

  void updateGreen(int value) {
    _color.green = value;
    notifyListeners();
  }

  void updateBlue(int value) {
    _color.blue = value;
    notifyListeners();
  }
}
