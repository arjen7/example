void main(List<String> args) async {
  print("program basladi");
  Future.delayed(Duration(seconds: 0), () {
    print("0 saniyelik islem");
  });
  print("program bitti");
  Future<int> toplam = Future(() {
    int toplam = 0;
    for (int i = 0; i < 100000000; i++) {
      toplam += i;
    }
    if ((toplam > 1000000000)) {
      return toplam;
    } else {
      throw Exception("toplam hesaplanamadi");
    }
  });
  int forsonuc = await toplam;
  print("***** $forsonuc");
  //toplam.then((int toplam) => print(toplam)).catchError((hata) => print(hata));
  print("diger islemler, for bitince toplam verilecek");
  var f2 = Future.value("arjen");
  f2.then((value) => print(value));
  var f3 = Future.error("hata ile biten future");
  f3.catchError((hata) => print(hata));
}
