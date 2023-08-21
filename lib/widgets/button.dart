import 'package:flutter/material.dart';
import '../classes/palette_colors.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          fixedSize: const Size.fromHeight(50),
          backgroundColor: PaletteColors.green2,
        ),
        child: Text(text),
      ),
    );
  }
}
