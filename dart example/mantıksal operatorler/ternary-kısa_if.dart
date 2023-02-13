void main(List<String> args) {
  var a = 8, b = 6, kucuksayi;
  a < b ? kucuksayi = a : kucuksayi = b;
  // a < b ? if , : else demek
  // : birden fazla kullanmak else if olusturur.
  print("$a ve $b den kucuk olan:$kucuksayi");
  String? ad = null, soyad = 'sari';
  String? mesaj;
  mesaj = ad ?? soyad; //eğer ad null ise soyadi yaz
  print("merhaba $mesaj"); //ad ve soyad null ise null yazdırır
}
