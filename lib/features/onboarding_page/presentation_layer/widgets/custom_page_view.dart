import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_generator/features/onboarding_page/presentation_layer/widgets/page_view_component.dart';
import '../../domain_layer/onboarding_page_model.dart';
import '../state_management/onboarding_page_controller.dart';
import '../state_management/page_view_controller.dart';


class CustomPageView extends ConsumerWidget {
  CustomPageView({super.key});
  final List<OnboardingModel> list = [
    OnboardingModel(
      title: 'Unleash your imagination',
      description: 'Stuck on artist\'s block? No problem! Describe how your app uses AI to overcome creative hurdles and generate unique images based on simple text prompts.',
      imagePath: 'assets/images/ai_logo.json',
    ),
    OnboardingModel(
      title: 'From concept to creation in seconds',
      description: 'Try our driving exam course and study all the stuff you need to pass the exam.',
      imagePath: 'assets/images/onboarding2.json',
    ),
    OnboardingModel(
      title: 'Dreamt it? See it',
      description: 'Showcase the diverse applications of your AI-generated visuals, from social media posts to presentations and creative projects.',
      imagePath: 'assets/images/ai_logo.json',
    ),
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PageView.builder(
      controller: ref.watch(onboardingPageControllerProvider),
      itemCount: list.length,
      itemBuilder: (context, index) => PageViewComponent(model: list[index],),
      onPageChanged: (index){
        ref.read(pageViewIndexProvider.notifier).state = index;
      },
    );
  }
}
