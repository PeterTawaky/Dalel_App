import 'package:flutter/material.dart';

import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_fonts.dart';

abstract class AppTextStyles {
  const AppTextStyles._();

  static TextStyle pacifico400style64 = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w400,
    color: AppColors.deepBrown,
    fontFamily: AppFonts.pacifico,
  );
}
