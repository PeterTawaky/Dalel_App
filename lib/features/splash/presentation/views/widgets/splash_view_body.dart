// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:dalel_app/core/routes/app_routes.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    delayNavigation();
    super.initState();
  }

  void delayNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      context.push(AppRoutes.onBoardingView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Dalel', style: AppTextStyles.pacifico400style64),
    );
  }
}
