import 'package:flutter/material.dart';

class ContainerConfigProvider extends ChangeNotifier {
  double _width = 100.0;
  double _height = 100.0;
  double _topRightRadius = 0.0;

  double get width => _width;
  double get height => _height;
  double get topRightRadius => _topRightRadius;

  void setWidth(double value) {
    _width = value;
    notifyListeners();
  }

  void setHeight(double value) {
    _height = value;
    notifyListeners();
  }

  void setRadius(double value) {
    _topRightRadius = value;
    notifyListeners();
  }
}