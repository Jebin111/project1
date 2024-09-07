import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.c, required this.hint});

  final TextEditingController c;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: c,
      style: const TextStyle(
          height: 1
      ),
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: const Icon(Icons.search,color: Color(0xff02AB13),size: 30),
        filled: true,
        fillColor: const Color(0xffD9D9D9),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
