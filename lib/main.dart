import 'package:flutter/material.dart';
import 'package:image_generator/persentation_layer/pages/home_page.dart';
import 'package:image_generator/utils/app_themes.dart';

void main() {
  runApp(const ImageGenerator());
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

