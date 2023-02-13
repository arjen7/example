void main(List<String> args) {
  print("internetten kisi verisi getirelecek");
  islemler();
  print("baska isler yapiliyor");
  print("islem bitti");
}

// await ile belirttigimiz durum bitmeden diger duruma gecmez
// await kullandıgımız fonksiyonda async yazmak zorundayız
// veri getirdik ve veri gelmeden islemi yapamayacağimiz icin
// islemi beklettik
// bekleyecek durumlari bekletip diger durumlarin devam etmesi için
void islemler() async {
  String kisi = await kisiverisinigetir();
  print(kisi);
  print(kisi.length);
}

Future<String> kisiverisinigetir() {
  return Future<String>.delayed(Duration(seconds: 3), () {
    return "kisi adi : arjen  id : 57";
  });
}
