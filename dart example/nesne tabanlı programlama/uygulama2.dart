import 'dart:math';

void main(List<String> args) {
  List<ogrenci> tumogrenciler = List.filled(10, ogrenci());
  ogrenciolustur(tumogrenciler);
  yazdir(tumogrenciler);
}

void ogrenciolustur(List<ogrenci> tumogrenciler) {
  for (int i = 0; i < tumogrenciler.length; i++) {
    tumogrenciler[i] =
        ogrenci(id: Random().nextInt(1000), not: Random().nextInt(100));
  }
}

void yazdir(tumogrenciler) {
  print(tumogrenciler);
}

class ogrenci {
  int id, not;
  ogrenci({this.id = 0, this.not = 0}) {}
  @override
  String toString() {
    return "id : $id  not : $not ";
  }
}
