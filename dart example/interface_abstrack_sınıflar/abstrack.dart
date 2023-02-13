void main(List<String> args) {
  sekil bir = kare(5);
  print(bir.alanhesapla());
  sekil iki = diktorgen(3, 4);
  print(iki.cevrehesapla());
}

//abstrack sınıflar alt sınıflarda override edilmek zorundadır
//bir sınıfta abstrack method varsa mutlaka abstrack tanımlanmalıdır
abstract class sekil {
  double alanhesapla();
  double cevrehesapla();
  void selamla() {
    print("selam bebek");
  }
}

class kare extends sekil {
  int kenar;
  kare(this.kenar);
  @override
  double alanhesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevrehesapla() {
    return kenar.toDouble() * 4;
  }
}

class diktorgen extends sekil {
  int kenar, kenar2;
  diktorgen(this.kenar, this.kenar2);
  @override
  double alanhesapla() {
    return kenar * kenar2.toDouble();
  }

  @override
  double cevrehesapla() {
    return kenar * 2 + kenar2 * 2;
  }
}
