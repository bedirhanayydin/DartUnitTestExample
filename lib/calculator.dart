class Calculator {
  double add(double a, double b) => a + b;

  double substract(double a, double b) => a - b;

  double multiply(double a, double b) => a * b;

  double divide(double a, double b) {
    if (b == 0) {
      throw ArgumentError('you can not divice by zero');
    }
    return a / b;
  }

  Future<double> powerTo(double a) async {
    return Future.delayed(Duration(seconds: 2), (() => a * a));
  }

  Stream<double> pi() => Stream.fromIterable({3, 3.1, 3.14, 3.141, 3.1415});
}
