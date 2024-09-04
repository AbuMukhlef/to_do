import 'package:flutter/material.dart';

extension GetScreenSize on BuildContext {
  getWidthScreen({double? multipleWidth = 1}) {
    return MediaQuery.of(this).size.width * multipleWidth!;
  }
}