import 'package:flutter/material.dart';
import '../classes/paletteColors.dart';

class FieldText extends StatelessWidget {
  const FieldText(
      {super.key,
      required this.text,
      this.hint,
      this.teclado = TextInputType.text,
      this.obscureText = false});

  final String text;
  final String? hint;
  final TextInputType teclado;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: teclado,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: PaletteColors.green2,
            // style: BorderStyle.solid,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: PaletteColors.green4,
          ),
        ),
        labelText: text,
        labelStyle: const TextStyle(
          fontSize: 15,
          color: PaletteColors.green6,
        ),
        hintText: hint,
        hintStyle: const TextStyle(
          color: PaletteColors.green1,
          fontSize: 15,
        ),
      ),
    );
  }
}
