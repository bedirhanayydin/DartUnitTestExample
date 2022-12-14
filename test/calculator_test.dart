import 'package:dart_unit_test/calculator.dart';
import 'package:test/test.dart';

void main() {
  late Calculator calc;

  //setUpAll tüm testlerden önce bir defa çalışır
  setUpAll(
    () {},
  );

  //setUp her testten önce bir defa çalışır
  setUp(
    () {
      //Arrange
      calc = Calculator();
    },
  );

//her testten sonra tetiklenir
  tearDown(
    () {},
  );

  //tüm teslerden sonra 1 kez çalışır dispose
  tearDownAll(
    () {},
  );
  //metodadı_testsenaryosu_Dönüştipi
  group('Add method test', () {
    test('Add_2add2_Double', () {
      //Act
      final result = calc.add(2, 2);
      //Assert
      expect(result, 4, reason: "custom açıklamalar eklenir 4vermezsek patlar");
      expect(result, isA<double>());
    });
    test('Create_NonNullObject_Calculator', () {
      expect(Calculator(), isNotNull);
    });

    //exception test

    test('Add_ThrowAnArgumentErrorWhenDividingZero_ArgumentError', () {
      expect(() => calc.divide(27, 0), throwsArgumentError);
    });
  });

  //future fonk testi
  group('Power to test', () {
    test('Power_81WhenInputIs_Double', () async {
      expect(await calc.powerTo(9), 81);
    });
  });

  group('pi test', () {
    test('Pi_Emit{3, 3.1, 3.14, 3.141, 3.1415}InThatOrder_Stream<double>', () {
      expect(calc.pi(), emitsInOrder({3, 3.1, 3.14, 3.141, 3.1415}));
    });
  });
}
