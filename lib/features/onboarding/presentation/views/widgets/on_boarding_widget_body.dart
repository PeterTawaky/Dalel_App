import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:dalel_app/core/routes/app_routes.dart';
import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_durations.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/core/utils/extensions/num_extensions.dart';
import 'package:dalel_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/custom_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class OnboardingWidgetBody extends StatefulWidget {
  const OnboardingWidgetBody({super.key});

  @override
  State<OnboardingWidgetBody> createState() => _OnboardingWidgetBodyState();
}

class _OnboardingWidgetBodyState extends State<OnboardingWidgetBody> {
  final PageController _controller = PageController(initialPage: 0);
  final List<OnboardingModel> onboardingList = [
    OnboardingModel(
      AppAssets.onboarding1,
      AppStrings.onBoarding1Title,
      AppStrings.onBoarding1Text,
    ),
    OnboardingModel(
      AppAssets.onboarding2,
      AppStrings.onBoaring2Title,
      AppStrings.onBoarding2Text,
    ),
    OnboardingModel(
      AppAssets.onboarding3,
      AppStrings.onBoarding3Title,
      AppStrings.onBoarding3Text,
    ),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height: 500.h(context),
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: _controller,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SvgPicture.asset(
                onboardingList[index].image,
                height: 290.h(context),
                width: 343.w(context),
                fit: BoxFit.fill,
              ),
              CustomPageIndicator(
                controller: _controller,
                onboardingList: onboardingList,
              ),
              SizedBox(height: 32.h(context)),

              Text(
                onboardingList[index].title,
                textAlign: TextAlign.center,
                style: AppTextStyles.poppins500style24,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 16.h(context)),
              Text(
                onboardingList[index].description,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: index == onboardingList.length - 1
                    ? 58.h(context)
                    : 88.h(context),
              ),
              ConditionalBuilder(
                condition: index == onboardingList.length - 1,
                builder: (context) => Column(
                  children: [
                    CustomButton(
                      text: AppStrings.createAccount,
                      onPressed: () => context.push(AppRoutes.signUpView),
                    ),
                    TextButton(
                      onPressed: () => context.go(AppRoutes.signInView),
                      child: Text(
                        AppStrings.loginNow,
                        style: AppTextStyles.poppins300style16.copyWith(
                          color: Color(0XFF6F6460),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                fallback: (context) => CustomButton(
                  text: AppStrings.next,
                  onPressed: () => _controller.nextPage(
                    duration: const Duration(
                      milliseconds: AppDurations.navigationDuration,
                    ),
                    curve: Curves.fastOutSlowIn,
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: 3,
      ),
    );
  }
}
