import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http ;
import 'package:image_generator/utils/app_keys.dart';
import '../presentation_layer/state_management/generated_image_provider.dart';
import '../presentation_layer/state_management/is_loading_provider.dart';


class OpenAi {

  // Method to generate an image from a prompt
  static void generateImage({required String prompt, required WidgetRef ref}) async {
    // API endpoint
    const String url = 'https://api.openai.com/v1/images/generations';
    // API key
    const String apiKey = AppKeys.openAiApiKey;
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
