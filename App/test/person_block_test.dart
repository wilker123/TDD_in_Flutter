import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd_in_flutter/person.dart';
import 'package:tdd_in_flutter/person_block.dart';
import 'package:tdd_in_flutter/person_repository.dart';
import 'package:tdd_in_flutter/person_state.dart';

class PersonRepositoryMock extends Mock implements PersonRepository{}


void main(){
  final repository = PersonRepositoryMock();
  final bloc = PersonBloc(repository);
  final person = Person(id: 1, name: "José", age: 20, height: 1.77, weight: 64.4);

  test("Deve retornar uma lista de person", (){
    when(repository).calls(#getPerson).thenAnswer((_) async => <Person>[person,person ]);
    bloc.add(PersonEvent.fetch);
    expect(bloc, emitsInOrder([
      isA<PersonLoadingState>(),
      isA<PersonListState>()
    ]));
  });
}