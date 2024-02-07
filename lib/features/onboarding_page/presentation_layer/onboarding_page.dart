import 'package:flutter/material.dart';
import 'package:image_generator/features/onboarding_page/presentation_layer/widgets/custom_page_view.dart';
import 'package:image_generator/features/onboarding_page/presentation_layer/widgets/onboarding_navigation_components.dart';



class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: CustomPageView(),
            ),
            const OnboardingNavigationComponents(),
          ],
        ),
      ),
    );
  }
}