import 'package:flutter/material.dart';


TextEditingController promptController = TextEditingController();

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Theme.of(context).textTheme.bodyMedium!.color,
      ),
      controller: promptController,
      decoration: InputDecoration(
        hintText: 'Enter your prompt here...',
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
