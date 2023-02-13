void main(List<String> args) {
  Map<String, dynamic> map = Map();
  map["id"] = 5;
  map["isim"] = "arjen";
  map["renk"] = "yesil";
  var yenimap = Map.from({'deger': 'yeni'});
  // mape başka bir mapi kopyaladik
  print(yenimap);
  yenimap = Map.fromEntries(map.entries);
  // yenimapi mapin entriesleriyle degistirdik.
  print(yenimap);
  var liste = [1, 2, 3, 4];
  var mapfromitreable = Map<String, String>.fromIterable(liste,
      key: (item) => "$item", value: (item) => "${item * 2}");
  // listeyi mape cevirdik. key ve valueleri ayarlamazsak eşit olurlar
  // elle key ve valueleri ayarladik
  print(mapfromitreable);
  map.update("id_yeni", (value) => value * 5, ifAbsent: (() => 100));
  // mapin icindeki bir degeri güncellemek için kullanırız
  // ifabsent ile eger yoksa olusturması için kullanırız
  print(map);
  map.putIfAbsent("soyisim", () => "sari");
  // mapte eger o deger yoksa eklemek için kullanırız varsa ekleme yapmaz
  print(map);
}
