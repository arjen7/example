void main(List<String> args) {
  try {
    ogrenci arjen = ogrenci(-5);
    print(arjen.yas);
  } on agexception catch (e) {
    print(e.mesaj);
    print(e);
  } finally {}
}

class agexception implements Exception {
  String mesaj;
  agexception({this.mesaj = "agexception varsayilan"});
  @override
  String toString() {
    return "hatanın tostringi calisti";
  }
}

class ogrenci {
  int yas;
  ogrenci(this.yas) {
    if (yas < 0) {
      throw agexception(mesaj: "age exception - yas negatif olamaz");
      // bizi hataya yonlendirdi
      // yas degeri olusmadı
    } else
      this.yas = yas;
  }
}
