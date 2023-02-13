import 'dart:io';

void main(List<String> args) {
  print("not harflendirmesi giriniz:");
  String? notdegeri = stdin.readLineSync();
  switch (notdegeri) {
    //switch sadece string ve int icin kullanilir
    case "AA":
      print("notunuz 90-100 arasindadir");
      break;
    case "BA":
      print("notunuz 80-90 arasindadir");
      break;
    case "BB":
      print("notunuz 70-80 arasindadir");
      break;
    case "CB":
      print("notunuz 60-70 arasindadir");
      break;
    case "CC":
      print("notunuz 50-60 arasindadir");
      break;
    case "FF":
      print("dersten kaldiniz");
      break;
    default:
      print("yanlis deger girdiniz");
  }
}
