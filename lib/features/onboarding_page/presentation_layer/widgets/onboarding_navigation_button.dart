import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_generator/features/home_page/presentation_layer/pages/home_page.dart';
import '../../../../utils/app_styles.dart';
import '../../../../utils/hive_boxes.dart';


class OnboardingNavigationButton extends StatelessWidget {
  const OnboardingNavigationButton({
    super.key,
    required this.pageIndex,
    required this.controller,
  });

  final int pageIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.zero,
      onPressed: (){
        if (pageIndex < 2) {
          controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
        } else {
          Box box = Hive.box(AppBoxes.onboardingBox);
          box.put('isOnboardingSeen', true);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
        }
      },
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          gradient: const LinearGradient(
            colors: <Color>[Colors.red, Colors.pink, Colors.purple, Colors.blue, Colors.green, Colors.yellow],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            pageIndex < 2 ? 'NEXT' : 'Let\'s Start...',
            style: AppStyle.styleMedium18(context).copyWith(color: Colors.white),
          ),
        ),
      )
    );
  }
}