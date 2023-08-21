import 'package:flutter/material.dart';
import 'package:gasto_energetico/widgets/field_text.dart';
import '../widgets/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff000000),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FieldText(
                  text: 'Usuário',
                  hint: 'exemplo@exemplo.com.br',
                  teclado: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 10,
                ),
                FieldText(
                  text: 'Senha',
                  hint: '@Abcd123',
                  teclado: TextInputType.text,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButton(
                      text: 'Login',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    MyButton(
                      text: 'Cadastre-se',
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
