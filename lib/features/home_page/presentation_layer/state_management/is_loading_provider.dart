import 'package:flutter_riverpod/flutter_riverpod.dart';


class LoadingProcessNotifier extends StateNotifier<bool>
{
  LoadingProcessNotifier() : super(false);

  void enableLoading(){
    state = true;
  }

  void disableLoading(){
    state = false;
  }
}


final isLoadingProvider = StateNotifierProvider<LoadingProcessNotifier, bool>((ref) {
  return LoadingProcessNotifier();
});