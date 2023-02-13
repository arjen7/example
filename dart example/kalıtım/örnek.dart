void main(List<String> args) {
  kisi arjen = kisi("arjen", 21);
  arjen.kendinitanit();
  calisan hasan = calisan("hasan", 22, 3000);
  hasan.kendinitanit();
}

class kisi {
  String isim;
  int yas;
  kisi(this.isim, this.yas);
  void kendinitanit() {
    print(" benim adim $isim yasim $yas");
  }
}

class calisan extends kisi {
  int maas;
  // super komutu ile kurucuya gelen degeri üst sınıfa yollarız
  // ust sınıf kurucusuda calıstıgı içi  yollamazsak hata verir
  calisan(String isim, int yas, this.maas) : super(isim, yas);
  @override
  void kendinitanit() {
    super.kendinitanit();
    print(" maas : $maas");
  }
}
