import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/extensions/num_extensions.dart';
import 'package:dalel_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({
    super.key,
    required PageController controller,
    required this.onboardingList,
  }) : _controller = controller;

  final PageController _controller;
  final List<OnboardingModel> onboardingList;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: _controller, // PageController
      count: onboardingList.length,
      effect: ExpandingDotsEffect(
        dotHeight: 10.h(context),
        dotWidth: 25.w(context),
        activeDotColor: AppColors.deepBrown,
        dotColor: AppColors.lightGrey,
      ), // your preferred effect

      onDotClicked: (index) {},
    );
  }
}
