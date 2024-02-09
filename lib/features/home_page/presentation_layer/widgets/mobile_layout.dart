import 'package:flutter/material.dart';
import '../../../../generated/l10n.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';
import 'generated_image.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Lottie image
        const Expanded(child: GeneratedImage()),
        Container(
          padding: const EdgeInsets.all(15.0),
          color: Theme.of(context).appBarTheme.backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).prompt_text,
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
    );
  }
}
