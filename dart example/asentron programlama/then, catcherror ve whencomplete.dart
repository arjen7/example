void main(List<String> args) {
  print("anne cocugu ekmek almaya yolllar");
  Future<String> sonuc = uzunsurenislem();
  // veri tipinin basına future  oldugunu yazmalıyız yoksa hata verir
  // sonuc.then islem bitiginde demek
  // .catcherror eger ki hata verirse
  // .whencomplete ise her durumda yazılır
  // try catch finally gibi
  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("ekmek alma operasyonu bitti"));
  print("peynir zeytin hazirlanir");
  print("kahvalti hazir");
}

Future<String> uzunsurenislem() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    //return "cocuk ekmekle eve gelir";
    throw Exception("bakkalda ekmek kalmamis");
  });
  return sonuc;
}
