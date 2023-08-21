import 'package:flutter/material.dart';
import 'package:gasto_energetico/classes/palette_colors.dart';
import 'package:gasto_energetico/classes/pessoa.dart';
import 'package:gasto_energetico/widgets/button.dart';
import 'package:gasto_energetico/widgets/field_text.dart';

class Imc extends StatefulWidget {
  const Imc({super.key});

  @override
  State<Imc> createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  TextEditingController nameControl = TextEditingController();
  TextEditingController ageControl = TextEditingController();
  TextEditingController heightControl = TextEditingController();
  TextEditingController weightControl = TextEditingController();
  TextEditingController targetWeightControl = TextEditingController();

  BiologicalGender? selectedBGender;

  People user = People.empty();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                FieldText(
                  controller: nameControl,
                  text: 'Nome',
                  teclado: TextInputType.name,
                ),
                const SizedBox(
                  height: 10,
                ),
                FieldText(
                  controller: ageControl,
                  text: 'Idade',
                  teclado: TextInputType.number,
                ),
                const SizedBox(
                  height: 10,
                ),
                FieldText(
                  controller: heightControl,
                  text: 'Altura',
                  teclado: TextInputType.number,
                ),
                const SizedBox(
                  height: 10,
                ),
                FieldText(
                  controller: weightControl,
                  text: 'Peso',
                  teclado: TextInputType.number,
                ),
                const SizedBox(
                  height: 10,
                ),
                FieldText(
                  controller: targetWeightControl,
                  text: 'Peso Almejado',
                  teclado: TextInputType.number,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    border: BorderDirectional(
                        bottom: BorderSide(
                      color: PaletteColors.green3,
                    )),
                  ),
                  child: DropdownButton<BiologicalGender>(
                    dropdownColor: PaletteColors.green1,
                    //padding: const EdgeInsets.only(bottom: 10),
                    itemHeight: 65,
                    underline: Container(),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    value: selectedBGender,
                    onChanged: (BiologicalGender? newValue) {
                      setState(
                        () {
                          selectedBGender = newValue;
                        },
                      );
                    },
                    items:
                        BiologicalGender.values.map((BiologicalGender gender) {
                      return DropdownMenuItem<BiologicalGender>(
                        value: gender,
                        child: Text(gender.toString().split('.').last),
                      );
                    }).toList(),
                  ),
                ),
                /* const FieldText(
                  text: 'Classificação',
                  teclado: TextInputType.number,
                  enable: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                const FieldText(
                  text: 'Grau de Obesidade',
                  teclado: TextInputType.number,
                  enable: false,
                ), */
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    MyButton(
                      text: 'Limpar Campos',
                      onPressed: () {
                        setState(() {
                          nameControl.clear();
                          ageControl.clear();
                          selectedBGender = null;
                          heightControl.clear();
                          targetWeightControl.clear();
                          weightControl.clear();
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    MyButton(
                      text: 'Calcular',
                      onPressed: () {
                        setState(
                          () {
                            saveAndCalculate();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void saveAndCalculate() {
    user.age = int.parse(ageControl.text);
    user.height = double.parse(heightControl.text);
    user.name = nameControl.text;
    user.targetWeight = double.parse(targetWeightControl.text);
    user.weight = double.parse(weightControl.text);
    user.bGender = selectedBGender!;

    setState(() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('IMC Calculado com sucesso!'),
            content: Text('IMC: ${user.imc.toStringAsFixed(2)}'),
            actions: [
              TextButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Alterar'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Próxima Página'),
              ),
            ],
            /*shape: BeveledRectangleBorder(
            side: const BorderSide(
              color: PaletteColors.green3,
            ),
            borderRadius: BorderRadius.circular(20),
          ), */
          );
        },
      );
    });
  }
}
