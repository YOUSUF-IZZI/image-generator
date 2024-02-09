import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state_management/onboarding_page_controller.dart';
import '../state_management/page_view_controller.dart';
import 'dot_indicator_widget.dart';
import 'onboarding_navigation_button.dart';


class OnboardingNavigationComponents extends ConsumerWidget {
  const OnboardingNavigationComponents({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(onboardingPageControllerProvider);
    final pageIndex = ref.watch(pageViewIndexProvider);
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: DotIndicatorWidget(),
        ),
        const SizedBox(height: 40),
        OnboardingNavigationButton(pageIndex: pageIndex, controller: controller),
        const SizedBox(height: 30),
      ],
    );
  }
}
