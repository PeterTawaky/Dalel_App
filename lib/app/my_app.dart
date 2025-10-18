import 'package:dalel_app/core/routes/router_generator.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/core/utils/extensions/num_extensions.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: AppColors.offWhite, //to change text color
            backgroundColor: AppColors.deepBrown,
            alignment: Alignment.center,
            fixedSize: Size(343.w(context), 56.h(context)),
            textStyle: AppTextStyles
                .poppins500style18, //controls only the size and font family
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r(context)),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: RouterGenerator.router,
    );
  }
}
