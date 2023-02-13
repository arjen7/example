void main(List<String> args) {
  Ogrenci ali = Ogrenci();
  ali.Ogrno = 549;
  ali.ad = "ali";
  ali.mezunmu = false;
  Ogrenci ayse = Ogrenci();
  ayse.Ogrno = 546;
  ayse.ad = "ayse";
  ayse.mezunmu = true;
  print(ayse.Ogrno);
}

class Ogrenci {
  int? Ogrno;
  String? ad;
  bool? mezunmu;
  void derscalis() {
    print("ogr ders calisiyor...");
  }
}
