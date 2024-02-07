import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_generator/features/home_page/application_layer/save_image_method.dart';
import '../state_management/generated_image_provider.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/generated_image.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Generator AI 🤖🔥'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () {
            promptController.clear();
            ref.read(generatedImageProvider.notifier).clearImageUrl();
            if (kDebugMode) {
              print(promptController.text.toString());
            }
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () {
              saveNetworkImage(ref.read(generatedImageProvider.notifier).getImageUrl());
            },
          )
        ],
      ),
      body: Column(
        children: [
          // Lottie image
          const GeneratedImage(),
          Container(
            padding: const EdgeInsets.all(15.0),
            color: Theme.of(context).appBarTheme.backgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter your prompt',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 8),
                const CustomTextField(),
                const SizedBox(height: 20),
                const CustomButton(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
