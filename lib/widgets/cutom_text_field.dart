import 'package:flutter/material.dart';

class CUstomTextField extends StatelessWidget {
  const CUstomTextField({
    super.key,
    required this.tybeController,
    required this.text,
  });

  final TextEditingController tybeController;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: tybeController,
      decoration: InputDecoration(
        labelText: text,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
