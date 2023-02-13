void main(List<String> args) {
  person arjen = person(3, "arjen");
  ogrenci hasan = ogrenci(1, "hasan", 7);
  person ayse = ogrenci(2, "ayse", 16);
  var yunus = person(4, "yunus");
  var ali = ogrenci(5, "ali", 8);
  List<person> tumpersonel = [arjen, ali, hasan, ayse, yunus];
  tumpersonel.add(yunus);
  tumpersonel.addAll([ayse, ali]);
  // sorrt ile karsılastırma yapılır
  // ogrencileri id ile karsılatırıp sıraladık
  tumpersonel.sort((ogr1, ogr2) {
    if (ogr1.id > ogr2.id) {
      return 1;
    } else {
      return -1;
    }
  });
  var isimler = tumpersonel.map((e) => e.isim).toSet();
  // map yapısına donusturup iismleri aldık sonra sete donusturduk ullanabilmek için
  print("$isimler\n");
  print(tumpersonel);
  bool sonuc = tumpersonel.any((person element) => element.id > 10);
  // listeyi arayıp istedigimiz deger veya kosul varsa true gonderir
  print(sonuc);
  tumpersonel.asMap();
  // listemizi mape donusturdu;
  print(tumpersonel[0]);
  print(tumpersonel[1].isim);
  // map indexlerine göre nesnelerimizi cagırdık
  print(tumpersonel.every((element) => element.isim.length > 0));
  // listeyi arar ve kosulu saglayanbir sey varsa true gonderir yoksa false
  print(tumpersonel.firstWhere((element) => element.id == 1));
  // tum listeyi arar ve kosulu saglayan ilk liste elemanınnı getirir
}

class person {
  int id = 0;
  String isim = "";
  person(this.id, this.isim);
  @override
  String toString() {
    return "id : $id ve isim : $isim \n";
  }
}

class ogrenci extends person {
  int alinanderssayisi = 0;
  ogrenci(id, isim, this.alinanderssayisi) : super(id, isim);
  @override
  String toString() {
    return "id : $id ve isim : $isim ve alinan ders sayisi:$alinanderssayisi\n";
  }
}
