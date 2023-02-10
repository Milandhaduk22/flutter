import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final String HintText;
  final String remessege;
  final String? rmessege;
  final int? length;

  Textfield({
    super.key,
    required this.HintText,
    required this.remessege,
    this.rmessege,
    this.length,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.always,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(70.0),
        ),
        hintText: HintText,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return remessege;
        } else if (value.length < length!) {
          return rmessege;
        }
        return null;
      },
    );
  }
}
