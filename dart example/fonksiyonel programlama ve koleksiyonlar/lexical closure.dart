//
// closure ozel bir fonksiyondur
// closure ile bir üst kapmsamdaki degıskenlerin
// degerini degistirebiliriz
void main(List<String> args) {
  var dondurulenfonksiyon = topla(3);
  // eleman 3 degerini aldi
  var sonuc = dondurulenfonksiyon(4);
  // deger 4 degerini aldı
  print(sonuc);
}

Function topla(int eleman) {
  print(eleman);
  return (int deger) => eleman * deger;
}
