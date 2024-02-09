import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_generator/utils/app_colors.dart';
import '../state_management/dark_mode_provider.dart';


class ThemeModeSwitcher extends ConsumerWidget {
  const ThemeModeSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkModeProvider);
    return Switch.adaptive(
      activeColor: AppColors.primaryColor,
      value: isDarkMode ?? false ,
      onChanged: (bool value) async{
        if (value == true) {
          ref.read(darkModeProvider.notifier).enableDarkMode();
        } else if (value == false) {
          ref.read(darkModeProvider.notifier).disableDarkMode();
        } else  {
          ref.read(darkModeProvider.notifier).disableDarkMode();
        }
      },
    );
  }
}
