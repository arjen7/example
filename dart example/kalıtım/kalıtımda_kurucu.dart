void main(List<String> args) {
  acemi_er hasan = acemi_er();
  hasan.sehirdegis();
}

// alt sınıf cagrıldıgında ust sınıfn kurucusuda calısır
// super.degısken ile ust sınıfın degıskenlerine mudahele edilir
// override yapısında da kullanılır
class asker {
  String ad = "";
  int yas = 0;
  String sehir = "ankara";
  asker() {
    print("asker kurucu calisti");
  }
}

class er extends asker {
  er() {
    print("er kurucusu calisti");
  }
}

class acemi_er extends er {
  acemi_er() {
    print("acemi er kurucusu calisti");
  }
  void sehirdegis() {
    super.sehir = "van";
    print(sehir);
  }
}
