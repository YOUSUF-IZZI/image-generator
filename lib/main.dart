import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_generator/features/onboarding_page/presentation_layer/onboarding_page.dart';
import 'package:image_generator/utils/app_themes.dart';
import 'package:image_generator/utils/hive_boxes.dart';
import 'features/home_page/presentation_layer/pages/home_page.dart';
import 'features/home_page/presentation_layer/state_management/dark_mode_provider.dart';
import 'features/home_page/presentation_layer/state_management/localization_provider.dart';
import 'generated/l10n.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(AppBoxes.onboardingBox);
  runApp(const ProviderScope(child: ImageGenerator()),);
}

class ImageGenerator extends ConsumerWidget {
  const ImageGenerator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(darkModeProvider);
    final locale = ref.watch(localeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Themes
      themeMode: darkMode == true ? ThemeMode.dark : darkMode == false ? ThemeMode.light : ThemeMode.system,
      theme : AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      // Localizations
      locale: Locale(locale.toString()),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: Hive.box(AppBoxes.onboardingBox).get('isOnboardingSeen') == true ?
      const HomePage() : Hive.box(AppBoxes.onboardingBox).get('isOnboardingSeen') == null ?
      const OnboardingPage() :
      const OnboardingPage(),
    );
  }
}