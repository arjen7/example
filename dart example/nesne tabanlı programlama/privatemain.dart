import 'dart:io';
import 'privatenesne dosyasi.dart';

// import ile dosyaları birbirine baglayabiliriz
void main(List<String> args) {
  print("isim ve sifrenizi giriniz");
  String isim = stdin.readLineSync()!;
  int sifre = int.parse(stdin.readLineSync()!);
  veritabanislemleri arjen = veritabanislemleri(isim, sifre);
  arjen.baglan();
}
