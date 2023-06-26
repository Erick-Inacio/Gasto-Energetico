import 'package:flutter/material.dart';
import 'package:gasto_energetico/pages/login_page.dart';

void main() {
  runApp(
    const GastoEnergetico(),
  );
}

class GastoEnergetico extends StatelessWidget {
  const GastoEnergetico({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
