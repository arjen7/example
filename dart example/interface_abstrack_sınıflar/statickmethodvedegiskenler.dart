void main(List<String> args) {
  matematik m1 = matematik(8, 5);
  matematik m2 = matematik(4, 9);
  matematik m3 = matematik(12, 7);
  m1.topla;
  m2.topla;
  m3.topla;
  print(matematik.pi);
  //nesne uretmeden pi sayısına ulasıp degıstırdık
  matematik.sinifsoyle();
  print(matematik.toplamislemsayisi);
  // tum nesnelerdeki yani sınıfta yapılan tüm
  // ıslemleri yazdırdık static sayesinde
}

// sınıflarda nesne uretmeden degısken ve methodlara
// erısmek ıcın static kullanılır
// static degıskenler kullanılana kadarr deger almaz bellekte yer ayrılmaz
// static methodlarda this kullanılmaz
//static methoddan nesneye özgü seylere erisilmez
// nesneden static methoda erisilebilir
class matematik {
  // instance veriable
  int birincisayi = 0;
  int ikincisayi = 0;
  static int toplamislemsayisi = 0;
  matematik(this.birincisayi, this.ikincisayi);
  void topla() {
    sinifsoyle();
    // nesne alanına static veri cagrınabilir
    birincisayi + ikincisayi;
    toplamislemsayisi++;
  }

  //class veriable
  static double pi = 3.14;
  static void sinifsoyle() {
    print("ben matematik sinifiyim");
  }
}
