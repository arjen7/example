import 'dart:io';

void main(List<String> args) {
  // 3 tane double sayının ortalamasını yazan program
  double x = 3.5, y = 5.6, z = 11.8, ort;
  ort = (x + y + z) / 3;
  print("$x, $y, $z nin ortalamasi:$ort");
  //döngüyle 5 defa adını yazdırma
  String ad = "arjen";
  for (int i = 0; i < 5; i++) {
    print("isimi ${i + 1}.kez yazma;$ad");
  } // 1 den 100 ekadar sayılardan 15 e bölünenleri yazma
  for (int j = 1, i = 1; i <= 100; i++) {
    if (i % 15 == 0) {
      print("1-100 arasindaki 15 e bolunen $j. sayi: $i");
      j++;
    }
  } //tanımlanan sayının faktoryeli
  int a = 5, faktoryel = 1;
  for (int i = 1; i <= a; i++) {
    faktoryel *= i;
  }
  print("5!(faktoryel): $faktoryel");
//vize final alıp sonucu bulan algoritma
  double ortalama;
  print("vize notunu giriniz:");
  int vize = int.parse(stdin.readLineSync()!);
  print("final notunu giriniz:");
  int? finall = int.parse(stdin.readLineSync()!);
  ortalama = vize * 0.4 + finall * 0.6;
  if (ortalama >= 60) {
    print("gectiniz. ortalama:$ortalama");
  } else {
    print("kaldiniz. ortalama:$ortalama");
  }
}
