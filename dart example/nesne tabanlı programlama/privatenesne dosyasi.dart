/*
nesne dosyasına erisimi kısıtlamak istedigimiz yerler varsa basına 
alt tire "_" getiririz
asagıda _sifre ve _kulllaniciadi degiskenlerine
main dosyasında arjen.kullaniciadi veya
ali.sifre denilerek ulasılamaz
*/
import 'dart:math';

class veritabanislemleri {
  String? _kullaniciadi = "arjen", kullanici;
  int _sifre = 977, sifreniz;
  veritabanislemleri(this.kullanici, this.sifreniz) {}
  bool _kontrol() {
    if (_kullaniciadi == kullanici && _sifre == sifreniz) {
      return true;
    } else
      return false;
  }

  bool _internetVarmi() {
    if (Random().nextBool())
      return true;
    else
      return false;
  }

  void baglan() {
    if (_internetVarmi()) {
      if (_kontrol())
        print("baglanildi");
      else
        print("isim veya sifre yanlis");
    } else
      print("internet yok");
  }
}
