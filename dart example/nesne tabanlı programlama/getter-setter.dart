import 'dart:io';

void main(List<String> args) {
  musteri m1 = musteri();
  print("musteri no giriniz");
  m1.musterinoata = int.parse(stdin.readLineSync()!);
  print(m1.musterinosoyle);
}

class musteri {
  int? musterino;
  void set musterinoata(int no) {
    if (no < 20) {
      musterino = no;
    }
  }

  String get musterinosoyle {
    return "musteri no : $musterino";
  }
}
