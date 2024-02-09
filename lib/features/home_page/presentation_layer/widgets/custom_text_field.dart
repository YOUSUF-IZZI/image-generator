import 'package:flutter/material.dart';
import '../../../../generated/l10n.dart';


TextEditingController promptController = TextEditingController();

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Theme.of(context).appBarTheme.titleTextStyle?.color,
      ),
      controller: promptController,
      decoration: InputDecoration(
        hintText: S.of(context).prompt_hint_text,
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
