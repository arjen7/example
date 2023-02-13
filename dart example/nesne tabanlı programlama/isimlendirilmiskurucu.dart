void main(List<String> args) {
  Araba audi = Araba("audi", 2018);
  Araba a = Araba.markasizkurucu(2022);
  var bmw = Araba.modelyilsizkurucu("bmw");
  print(audi.marka);
  print(bmw.marka);
  print(a.modelyili);
}

class Araba {
  String? marka;
  int? modelyili;
  Araba(this.marka, this.modelyili) {
    print(marka);
    print(modelyili);
  }
  Araba.markasizkurucu(this.modelyili) {
    print(modelyili);
  }
  Araba.modelyilsizkurucu(this.marka) {
    print(marka);
  }
  // isimlendirilmiş kurucudan istediğimiz kadar yapabiliriz
}
