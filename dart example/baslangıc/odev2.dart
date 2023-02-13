import 'dart:io';

void main(List<String> args) {
  //ortalma bulma
  print("not ortalamasi bulma");
  print("1.notu giriniz:");
  int not1 = int.parse(stdin.readLineSync()!);
  print("2. notu giriniz:");
  int not2 = int.parse(stdin.readLineSync()!);
  double ortalama = (not1 + not2) / 2;
  print("ortalama:$ortalama");
  //fiyata %18 kdv ekleme
  print("kdvli urun fiyati bulma:");
  print("urunun kdvsiz fiyatini giriniz:");
  int fiyat = int.parse(stdin.readLineSync()!);
  double kdvfiyat = fiyat * 0.18 + fiyat;
  print("urunun kdvli(kdv orani:%18) fiyati:$kdvfiyat");
}
