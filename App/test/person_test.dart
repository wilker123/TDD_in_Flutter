import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_in_flutter/person.dart';

void main() {
  final person = Person(name: "José", age: 30, height: 1.77, weight: 64.4);
  test("IMC deve vir 20.56 :)", () {
    expect(person.imc, 20.56);
  });

  test("Se a idade for maior que 18, então isOlder deve ser true", () {
    expect(person.isOlder, true);
  });

  test("Se a idade for igual a 18, então isOlder deve ser true", () {
    expect(person.isOlder, true);
  });
}
