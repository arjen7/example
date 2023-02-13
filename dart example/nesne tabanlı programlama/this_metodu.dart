void main(List<String> args) {
  Araba audi = Araba(2018, "audi");
  audi.yasbulma();
  Araba nissan = Araba(2016, "nissan");
  nissan.yasbulma();
}

class Araba {
  int? modelyili;
  String? marka;
  Araba(this.modelyili, this.marka) {
    // parantezde this kullanmazsak asagidaki gibi kullaniriz
    print("kurucu yapi calisti");
    // this.modelyili = modelyili;
    // this.marka = marka;
    // üstte ki parametlere atadik ki hata vermesin
    // eger degiskenler ayni olmasaydi thise gerek olmazdı
    // atama yapsak yeterli olurdu
  }

  void yasbulma() {
    print(2022 - modelyili!);
  }
}
