import 'dart:io';

void main(List<String> args) {
  print("adinizi girin=");
  String? ad = stdin.readLineSync();
  // stdin.readLineSync() metin almamızı sağlar
  // string? null olabilir diye yazdık
  print("girilen ad: $ad");
  print("yasinizi girin=");
  int? yas = int.parse(stdin.readLineSync()!);
  // int.parse metni sayiya dönüştürür
  //stdin.LineSync()! girilen değer null olmayacak demek
  // eğer null deger girilirse hata verir
  print("yasiniz: $yas");
}
