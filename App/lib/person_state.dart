import 'person.dart';

abstract class PersonState{}

class PersonListState extends PersonState{
  late final List<Person> data;

  PersonListState(this.data);
}

class PersonLoadingState extends PersonState{}

class PersonErrorState extends PersonState{
  late final dynamic? error;

  PersonErrorState(this.error);
}