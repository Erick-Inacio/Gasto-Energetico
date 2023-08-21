import 'package:flutter/material.dart';
import '../classes/palette_colors.dart';

class FieldText extends StatelessWidget {
  const FieldText({
    super.key,
    this.text,
    this.hint,
    this.teclado = TextInputType.text,
    this.obscureText = false,
    this.enable = true,
    this.controller,
  });
  const FieldText.empty({super.key})
      : text = '',/////////////////////////////////////////////
        hint = '',
        teclado = TextInputType.text,
        obscureText = false,
        enable = true,
        controller = null;

  final String? text;
  final String? hint;
  final TextInputType teclado;
  final bool obscureText;
  final bool enable;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      enabled: enable,
      style: const TextStyle(
        color: PaletteColors.green2,
      ),
      obscureText: obscureText,
      keyboardType: teclado,
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.zero),
          borderSide: BorderSide(
            color: PaletteColors.green4,
          ),
        ),
        /* OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: PaletteColors.green2,
            // style: BorderStyle.solid,
          ),
        ), */
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: PaletteColors.green2,
          ),
        ),
        /* OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: PaletteColors.green4,
          ),
        ), */
        labelText: text,
        labelStyle: const TextStyle(
          fontSize: 15,
          color: PaletteColors.green4,
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
