
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'person.dart';

class PersonRepository{

  final http.Client client;

  PersonRepository(this.client);

  Future<List<Person>> getPerson() async{
    final response = await client.get(Uri.parse("https://61a7d612387ab200171d2f08.mockapi.io/api/person/person"));
    if(response.statusCode == 200){
      final jsonList = json.decode(response.body) as List;
      
      return jsonList.map((e) => Person.fromMap(e)).toList();

    }else{
      throw Exception("Error na internet");
    }
  }
}