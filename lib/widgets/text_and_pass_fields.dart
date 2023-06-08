import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      obscureText: true,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: "Password",
        suffixIcon: const Icon(
          Icons.remove_red_eye_outlined,
          color: Colors.grey,
        ),
        labelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }
}
class DefaultTextField extends StatelessWidget {
  final String hint;
  final TextInputType input_type;
  const DefaultTextField({
    this.hint = 'Name',
    this.input_type = TextInputType.text,
});


  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: input_type,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: hint,
        labelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }
}