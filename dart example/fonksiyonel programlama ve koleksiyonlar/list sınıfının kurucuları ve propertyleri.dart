void main(List<String> args) {
  person arjen = person(3, "arjen");
  ogrenci hasan = ogrenci(1, "hasan", 7);
  person ayse = ogrenci(2, "ayse", 16);
  var yunus = person(4, "yunus");
  var ali = ogrenci(5, "ali", 8);
  List<person> tumpersonel = [arjen, ali, hasan, ayse, yunus];
  var liste1 = List<ogrenci>.filled(5, ogrenci(0, "", 0));
  print("$liste1\n\n");
  var listeFrom = List<ogrenci>.from(tumpersonel.whereType<ogrenci>());
  // baska birlisteyi kopyalarız
  print("$listeFrom\n\n");
  var listeOf = List<ogrenci>.of(tumpersonel.whereType<ogrenci>());
  //pek farklarıyok listefrom ile final ve const gibi
  print("$listeOf\n\n");
  var listgenerate =
      List<ogrenci>.generate(5, (index) => ogrenci(index, "$index", index * 2));
  // liste de fonksiyon kulllanabiliriz
  var liste = List.generate(4, (index) => (index + 2) * 2);
  print("$liste\n\n");
  // listede fonksiyon kullandik
  print("$listgenerate\n\n");
  var degistirlemezliste = List.unmodifiable([1, 2, 3]);
  print("$degistirlemezliste\n\n");
  // degistirlemez liste ekleme cıkarma yapılamaz
}

class person {
  int id = 0;
  String isim = "";
  person(this.id, this.isim);
  @override
  String toString() {
    return "id : $id ve isim : $isim";
  }
}

class ogrenci extends person {
  int alinanderssayisi = 0;
  ogrenci(id, isim, this.alinanderssayisi) : super(id, isim);
  @override
  String toString() {
    return "id : $id ve isim : $isim ve alinan ders sayisi:$alinanderssayisi";
  }
}
