import 'package:dalel_app/core/routes/app_routes.dart';
import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:dalel_app/core/utils/extensions/context_extensions.dart';
import 'package:dalel_app/core/utils/extensions/num_extensions.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/on_boarding_widget_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class OnBoardingViewBody extends StatelessWidget {
  final List<Widget> onBoardingWidgets = const[

  ];
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h(context)),
        Row(
          children: [
            Spacer(),
            Padding(
              padding: EdgeInsetsDirectional.only(end: 16.w(context)),
              child: TextButton(
                onPressed: () => context.pushReplacement(AppRoutes.signInView),
                child: Text(
                  AppStrings.skip,
                  style: AppTextStyles.poppins300style16.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 32.h(context)),
        OnboardingWidgetBody(),
      ],
    );
    // );
  }
}
