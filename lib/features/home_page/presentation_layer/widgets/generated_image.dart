import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import '../state_management/generated_image_provider.dart';
import '../state_management/is_loading_provider.dart';

class GeneratedImage extends ConsumerWidget {
  const GeneratedImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(isLoadingProvider);
    final url = ref.watch(generatedImageProvider);
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            url != null
                ? Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14.0),
                    child: Image.network(url, fit: BoxFit.cover,),
                  ),
                )
                : Lottie.asset(isLoading ? 'assets/images/loading.json' : 'assets/images/ai_logo.json',),
          ],
        ),
      ),
    );
  }
}
