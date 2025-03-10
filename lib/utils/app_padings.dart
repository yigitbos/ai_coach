import 'package:flutter/material.dart';

enum AppPadings {
  low(8.0),
  medium(16.0),
  high(24.0),
  veryHigh(32.0);

  final double value;
  const AppPadings(this.value);

  /// All sides padding with [value]
  EdgeInsets get padding => EdgeInsets.all(value);

  /// Horizontal padding with [value]
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: value);

  /// Vertical padding with [value]
  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: value);
}
