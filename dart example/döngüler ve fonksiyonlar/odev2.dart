import 'dart:io';

void main(List<String> args) {
  print(
      "hangi sayiya kadar olan ciftlerin toplami ve r si o sayi olan dairenin alani:");
  int x = int.parse(stdin.readLineSync()!);
  print("girdiginiz sayiya kadar ciftlerin toplamı ${cifttoplam(x)}");
  print("r si $x olan dairenin alani ${dairealan(x)}");
  print("turunu bilmek istediginiz ucgenin kenarlarini giriniz:");
  int c = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int a = int.parse(stdin.readLineSync()!);
  ucgentip(kenar1: a, kenar2: b, kenar3: c);
}

//alınan degere kadar olan cıft sayıların toplamını bulan fonksıyon
cifttoplam(int x) {
  int toplam = 0;
  for (int i = 0; i <= x; i++) {
    i % 2 == 0 ? toplam += i : null;
  }
  return toplam;
}

//daire alanını hesaplayan fonksiyon
dairealan(int r, [double pi = 3.14]) {
  double alan = pi * r * r;
  return alan;
}

//isimlendirilmiş parametre ile
//ucgen türünü bulan fonksiyon
ucgentip({int kenar1 = 0, int kenar2 = 0, int kenar3 = 0}) {
  kenar1 == kenar2 && kenar1 == kenar3
      ? print("eskenar ucgendir")
      : kenar1 != kenar2 && kenar1 != kenar3 && kenar2 != kenar3
          ? print("cesit kenar ucgendir")
          : print("ikiz kenar ucgendir");
}
