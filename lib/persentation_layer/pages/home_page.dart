import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Generator AI 🤖🔥'),
        centerTitle: true,
      ),
      // The body contain from scrollable lottie image and form TextField and button to generate image
      body: Column(
        children: [
          // Lottie image
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Lottie.asset(
                      'assets/images/ai_logo.json',
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Form
          Column(
            children: [
              // Text Field
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Enter the text',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              // Button
              ElevatedButton(
                onPressed: () {},
                child: const Text('Generate Image'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
