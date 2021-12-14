import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:tdd_in_flutter/person_repository.dart';

class ClientMock extends Mock implements http.Client{ }

void main() {

  final client = ClientMock();

  final repository = PersonRepository(client);

  test('deve pegar uma lista de person',() async {

    when(client).calls(#get).thenAnswer((_) async => http.Response(jsonReturn, 200));

    final list = await repository.getPerson();

    expect(list.isNotEmpty, equals(true));
    expect(list.first.name, equals("Jose"));
  });

  test("retorna uma exception se não for statusCode 200", () async {
    when(client).calls(#get).thenAnswer((_) async => http.Response(jsonReturn, 404));
    expect(() async => await repository.getPerson(), throwsException);
  });
}

const jsonReturn = '[{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"1"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"2"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"3"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"4"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"5"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"6"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"7"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"8"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"9"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"10"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"11"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"12"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"13"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"14"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"15"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"16"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"17"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"18"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"19"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"20"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"21"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"22"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"23"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"24"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"25"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"26"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"27"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"28"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"29"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"30"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"31"},{"name":"Jose","age":19,"height":1.77,"weight":64.4,"id":"32"}]';