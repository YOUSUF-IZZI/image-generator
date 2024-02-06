import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_generator/utils/app_themes.dart';
import 'presentation_layer/pages/home_page.dart';

void main() {
  runApp(const ProviderScope(child: ImageGenerator()));
}

class ImageGenerator extends StatelessWidget {
  const ImageGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      themeMode: ThemeMode.dark,
      theme : AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
    );
  }
}


/* To do:
* Localizations
* Animated Loading for home page
* Add splash Screen
* Add onboarding page
*/