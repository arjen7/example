void main(List<String> args) {
  ogrenci ahmet = ogrenci(1, "ahmet");
  print(ahmet.id);
  ogrenci ali = ogrenci.idyok("ali");
  print(ali.isim);
  var arjen = ogrenci.factorykurucusu(-10, "arjen");
  print("isim : ${arjen.isim} id :${arjen.id}");
}

class ogrenci {
  int id = 0;
  String isim = "";
  ogrenci(this.id, this.isim) {
    print("kurucu calıştı");
  }
  ogrenci.idyok(this.isim) {
    print("isimlendirilmis kurucu calıstı");
  }
  factory ogrenci.factorykurucusu(int id, String isim) {
    if (isim.length == 0 || id < 0) {
      return ogrenci(5, isim);
    } else
      return ogrenci(id, isim);
  }
}
