import 'package:flutter_test/flutter_test.dart';
@Timeout(Duration(seconds: 60))
//skipar a suit inteira
//@Skip('Feature ainda não completa')

void main() {

  test("is worked", (){
    final name = "Jacob";
    //isso serve para reduzir o número de expect, deixando todos os requerimentos em uma linha só
    expect(name, allOf(isA<String>(), equals("Jacob"), isNotNull, contains("ac")));
  });

  test('throw error', (){
    expect(() => int.parse("x"), throwsException);
  }, tags: 'web');
  
}

  //flutter test -p
  //flutter test -p web -> executa por tag

 /* setUp((){
    print("Inicia o teste");
  });

  tearDown((){
    print("Destroi o test");
  });

  setUpAll((){
    print("Inicia a suit");
  });

  tearDownAll((){
    print("destroi o test");
  }); */
