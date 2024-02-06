import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http ;
import 'package:image_generator/presentation_layer/state_management/generated_image_provider.dart';
import 'package:image_generator/presentation_layer/state_management/is_loading_provider.dart';
import 'package:image_generator/presentation_layer/widgets/custom_text_field.dart';


// Summary: This file contains the class for the OpenAI API.
// end-point: https://api.openai.com/v1/images/generations
// API key: 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
// The class will contain a method to generate an image from a prompt.
// The method will take a prompt as an argument and return the generated image.
// The class will also contain a method to save the generated image to the device using image_gallery_saver package.
// The method will take the generated image as an argument and return a boolean value to indicate if the image was saved successfully.

class OpenAi {

  // Method to generate an image from a prompt
  static void generateImage({required String prompt, required WidgetRef ref}) async {
    // API endpoint
    const String url = 'https://api.openai.com/v1/images/generations';
    // API key
    const String apiKey = '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';
    // Send a POST request to the API endpoint
    try {
      var response = await http.post(
        Uri.parse(url),
        headers: {
          "Authorization": "Bearer $apiKey",
          "Content-Type": 'application/json'
        },
        body: jsonEncode({
          "prompt": prompt,
          "size": "1024x1024"
        }),
      );
      if (response.statusCode == 200) {
        ref.read(isLoadingProvider.notifier).disableLoading();
        promptController.clear();
        // If the server returns a 200 OK response, parse the JSON response
        var data = jsonDecode(response.body);
        ref.read(generatedImageProvider.notifier).setImageUrl(data['data'][0]['url']);
      } else {
        // If the server returns an error response, throw an exception
        if (kDebugMode) {
          ref.read(isLoadingProvider.notifier).disableLoading();
          print('Failed to generate image, Server error: ${response.statusCode}');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      ref.read(isLoadingProvider.notifier).disableLoading();
    }
    ref.read(isLoadingProvider.notifier).disableLoading();
    return null;
  }
}
