import 'package:flutter/material.dart';
import 'package:gasto_energetico/classes/paletteColors.dart';
import 'package:gasto_energetico/widgets/field_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const FieldText(
                text: 'Usuário',
                hint: 'exemplo@exemplo.com.br',
                teclado: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 10,
              ),
              const FieldText(
                text: 'Senha',
                hint: '@Abcd123',
                teclado: TextInputType.text,
                obscureText: true,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: const Size(135, 50),
                      backgroundColor: PaletteColors.green2,
                    ),
                    child: const Text('Login'),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: const Size(135, 50),
                      backgroundColor: PaletteColors.green2,
                    ),
                    child: const Text('Registre-se'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
