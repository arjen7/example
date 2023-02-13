import 'dart:math';

void main(List<String> args) {
  try {
    double deger = karekokal(-20);
    print("deger ${deger.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}

double karekokal(int i) {
  try {
    if (i < 0) {
      throw FormatException("sayi negatif olamaz");
      //hatadan sonra ki kod calısmaz program direk hataya
      // yonledirir. catch verisine bakar
    } else {
      return sqrt(i);
    }
  } on FormatException catch (e) {
    print(e.message + " methot içinde");
  } finally {
    return 0;
  }
}
