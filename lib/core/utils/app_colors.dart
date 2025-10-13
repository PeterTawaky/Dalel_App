import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primaryColor = Color(0xFFC49E85);
  static const Color offWhite = Color(0xFFF8F4F9);
  static const Color deepBrown = Color(0xFF6B4B3E);
  static const Color grey = Color(0xFFC4C4c4);
  static const Color deepGrey = Color(0xFF6F6460);
  static const Color lightGrey = Color(0xFFB4B4B4);
  static const Color black = Color(0xFF333333);

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF00D9FF), Color(0xFF0EA5E9)],
  );
  static Color getRandomColor(int index) {
    return randomColors[index % randomColors.length];
  }

  static Color withOpacity(Color color, double opacity) {
    return color.withValues(alpha: opacity);
  }

  static LinearGradient createGradient({
    required Color startColor,
    required Color endColor,
    Alignment begin = Alignment.topLeft,
    Alignment end = Alignment.bottomRight,
  }) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors: [startColor, endColor],
    );
  }

  static const List<Color> randomColors = [
    Color(0xFF00D9FF), // Cyan - Primary data series
    Color(0xFF10B981), // Green - Success/positive values
    Color(0xFFF59E0B), // Amber - Warning/neutral values
    Color(0xFFEF4444), // Red - Error/negative values
  ];
}
