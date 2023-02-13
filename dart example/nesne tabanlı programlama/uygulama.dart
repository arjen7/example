import 'dart:io';

//alan cevre hesaplama
void main(List<String> args) {
  print("yaricap giriniz");
  cemberdaire x = cemberdaire(int.parse(stdin.readLineSync()!));
  print("alan : ${x.alanhesapla()}");
  print("cevre : ${x.cevrehesapla()}");
}

class cemberdaire {
  int _yaricap = 1;
  double _pi = 3.14;
  cemberdaire(int yaricap) {
    _yaricapkontrol = yaricap;
  }
  void set _yaricapkontrol(int deger) {
    if (deger > 0) {
      _yaricap = deger;
    }
  }

  double cevrehesapla() {
    return 2 * _pi * _yaricap;
  }

  double alanhesapla() {
    return _pi * _yaricap * _yaricap;
  }
}
