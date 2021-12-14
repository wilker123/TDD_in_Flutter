import 'package:tdd_in_flutter/person.dart';

void main(){
  final person = Person(id: 1,name: "Wilker", age: 30, height:1.77, weight: 64.4 );
  // ignore: avoid_print
  print(person.name);
}