import 'package:flutter/material.dart';
import 'package:image_generator/presentation_layer/widgets/custom_button.dart';
import 'package:image_generator/presentation_layer/widgets/generated_image.dart';
import '../widgets/custom_text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Generator AI 🤖🔥'),
        centerTitle: true,
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
