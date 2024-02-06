import 'package:flutter_riverpod/flutter_riverpod.dart';


class GeneratedImageNotifier extends StateNotifier<String?>
{
  GeneratedImageNotifier() : super(null);

  String? getImageUrl(){
    return state;
  }

  void setImageUrl(String? url){
    state = url;
  }
}


final generatedImageProvider = StateNotifierProvider<GeneratedImageNotifier, String?>((ref) {
  return GeneratedImageNotifier();
});