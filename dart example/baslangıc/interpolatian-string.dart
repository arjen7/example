void main(List<String> args) {
  String ad = "arjen"; //her biri literalstir
  var sayi = 56; //tami
  bool deger = false;
  print("ad:$ad");
  print("sayi:$sayi");
  print("deger:$deger");
  var kurs = 'dart\'in kulllanimi';
  String kurstanimi = "dart'i ve flutter'i kullanma";
  print("kurs:$kurs, kurs tanimi:$kurstanimi"); //$ degisken oldugunu belirtir
  print("$kurs'ta bulununan karakter sayisi:" + kurs.length.toString());
  // kurs.lenght karakter uzunulugu toString() yaparak yazdırılır
  print("kursta ki karakter sayisi:${kurs.length}");
  //${kurs.lenght} şeklinde de yazdırılabilir
  double en = 10, boy = 12;
  print("eni $en ve boyu $boy olan diktörgenin alani ${(en * boy).toInt()}");
  //${} metoduyla işlem yapılabilir. .toInt ile inte çevrilir.
}
