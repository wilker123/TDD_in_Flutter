import 'package:tdd_in_flutter/person.dart';

void main(List<String> arguments) {
  final person = Person(name: "José", age: 30, height: 1.77, weight: 64.4);

  // ignore: avoid_print
  print('IMC deve vir 20.56: ${person.imc == 20.56}');
  // ignore: avoid_print
  print(person.imc);
}
