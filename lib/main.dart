import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_generator/features/onboarding_page/presentation_layer/onboarding_page.dart';
import 'package:image_generator/utils/app_themes.dart';
import 'package:image_generator/utils/hive_boxes.dart';
import 'features/home_page/presentation_layer/pages/home_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(AppBoxes.onboardingBox);
  runApp(const ProviderScope(child: ImageGenerator()));
}

class ImageGenerator extends StatelessWidget {
  const ImageGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme : AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: Hive.box(AppBoxes.onboardingBox).get('isOnboardingSeen') == true ?
      const HomePage() : Hive.box(AppBoxes.onboardingBox).get('isOnboardingSeen') == null ?
      const OnboardingPage() :
      const OnboardingPage(),
    );
  }
}


/* To do:
* Localizations
* Animated Loading for home page
* Add splash Screen
*/