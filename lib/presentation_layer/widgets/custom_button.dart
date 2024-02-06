import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_generator/data_layer/open_ai.dart';
import 'package:image_generator/presentation_layer/state_management/generated_image_provider.dart';
import 'package:image_generator/presentation_layer/state_management/is_loading_provider.dart';
import 'package:image_generator/presentation_layer/widgets/custom_text_field.dart';
import '../../utils/app_styles.dart';

class CustomButton extends ConsumerWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialButton(
      onPressed: () {
        ref.read(generatedImageProvider.notifier).setImageUrl(null);
        ref.read(isLoadingProvider.notifier).enableLoading();
        FocusScope.of(context).unfocus();
        OpenAi.generateImage(prompt: promptController.text.toString(), ref: ref);
      },
      height: 50,
      minWidth: double.infinity,
      color: Colors.purpleAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.generating_tokens, color: Colors.white,),
          SizedBox(width: 5.0),
          Text(
            'Generate',
            style: AppStyle.styleRegular16,
          ),
        ],
      ),
    );
  }
}
