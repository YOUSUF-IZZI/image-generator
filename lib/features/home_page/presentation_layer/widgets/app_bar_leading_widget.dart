import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_generator/features/home_page/presentation_layer/widgets/custom_drawer.dart';
import '../state_management/generated_image_provider.dart';
import 'custom_text_field.dart';

class AppBarLeadingWidget extends ConsumerWidget {
  const AppBarLeadingWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final url = ref.watch(generatedImageProvider);
    return url != null ? IconButton(
      icon: const Icon(Icons.refresh),
      onPressed: () {
        promptController.clear();
        ref.read(generatedImageProvider.notifier).clearImageUrl();
        if (kDebugMode) {
          print(promptController.text.toString());
        }
      },
    ) : IconButton(
      onPressed: (){
        homePageScaffoldKey.currentState!.openDrawer();
      },
      icon: const Icon(Icons.menu),
    );
  }
}
