// fonkisyon aldıgı id parametresine göre kullanıcı getirsin
// 2 saniye sonra calıssın getirilen kisi map olarak alınsın
// bu mapte user name ve id olsun
// getirilen kisi bilgiisinde ki user name degeriyle kisinin
// kurslarını getiren bir fonksiyon yazınız
// bu fonksiyon 4 saniye sürüp username degerine ait
// kursları liste ile döndürecek
// kursların ilk elemanını parametre alan ve bu kursa ait
// bir yorumu döndüren fonksiyon yazınız. fonksiyon 1 sny sürecektir
void main(List<String> args) async {
  await usergetiren(57).then((value) {
    print(value);
  });
  kursgetiren("arjen").then((value) {
    print(value);
    kursyorumu("flutter").then((value) {
      print(value);
    });
  });
}

Future<String> kursyorumu(String kurs) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "kurs mukemmel";
  });
}

Future<List<String>> kursgetiren(String user) {
  print("$user isimli kullanicinin kurslari getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ["flutter", "kotlin", "java"];
  });
}

Future<Map> usergetiren(int id) {
  print("$id idli kullanıcı getiriliyor");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {"username": "arjen", "id": id};
  });
}
