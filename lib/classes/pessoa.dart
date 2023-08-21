import 'dart:math';

enum BiologicalGender { homem, mulher }

class People {
  People({
    required this.name,
    required this.age,
    required this.height,
    required this.weight,
    required this.bGender,
    required this.targetWeight,
  });
  People.empty()
      : name = '',
        age = 0,
        height = 0,
        bGender = BiologicalGender.mulher,
        targetWeight = 0,
        weight = 0;

  BiologicalGender bGender;
  String name;
  int age;
  double height;
  double targetWeight;
  double weight;

  double get imc => calculateIMC();

  double calculateIMC() {
    if (height == 0) return 0;
    return weight / pow(height, 2);
  }
}
