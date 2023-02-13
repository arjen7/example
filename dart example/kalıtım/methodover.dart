void main(List<String> args) {
  arac a = arac();
  print("tekerlekli mi : ${a.tekerleklimi}");
  a.fonk();
  otobus mersedes = otobus();
  mersedes.tekerleklimi;
  mersedes.yolcukapasite();
  mersedes.fonk();
  araba audi = araba();
  print(audi.tekerlek);
  audi.fonk2();
  audi.fonk();
  benzinliaraba audia5 = benzinliaraba();
  audia5.benzin;
  audia5.benzinezam();
  audia5.tekerlek;
}
//method  overriding üst sınıftaki degisken ve methodların

// alt sınıflar tarafından degıstırılmesidir
// extends ile sınıfın hangi alt sınıfa ait oldugu gösterilir
class arac {
  bool tekerleklimi = true;
  void fonk() {
    print("araca hosgeldiniz");
  }
}

class araba extends arac {
  String tekerlek = "4 tekerli";
  void fonk2() {
    print("arabanız guzelmis");
  }

  @override
  void fonk() {
    print("arabaya hosgeldiniz");
  }
}

class otobus extends arac {
  void yolcukapasite() {
    print("yolcu kapsitesi 38");
  }
}

class benzinliaraba extends araba {
  String benzin = "benzinli araba";
  void benzinezam() {
    print("benzinde amma pahalı");
  }
}
