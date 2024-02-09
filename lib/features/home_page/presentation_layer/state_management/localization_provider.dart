import 'package:flutter_riverpod/flutter_riverpod.dart';


class LocalizationNotifier extends StateNotifier<String>
{
  LocalizationNotifier() : super('en');

  void changeLocale(String locale)
  {
    state = locale;
  }
}


final localeProvider = StateNotifierProvider<LocalizationNotifier, String>((ref) {
  return LocalizationNotifier();
});