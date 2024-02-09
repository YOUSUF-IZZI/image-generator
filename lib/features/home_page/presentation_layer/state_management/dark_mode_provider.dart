import 'package:flutter_riverpod/flutter_riverpod.dart';


class DarkModeNotifier extends StateNotifier<bool?>
{
  DarkModeNotifier() : super(null);

  void enableDarkMode()
  {
    state = true;
  }
  void disableDarkMode()
  {
    state = false;
  }
}


final darkModeProvider = StateNotifierProvider<DarkModeNotifier, bool?>((ref) {
  return DarkModeNotifier();
});