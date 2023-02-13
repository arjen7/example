//elemanları farklıdır uzunlugu sabit degildir sıralı saklama yapmaz
//elemanları key--value olarak saklar
//tüm veri tipleri kullanılabilir ama key degeri eşsiz olmalı yani unique

void main(List<String> args) {
  Map<String, int> alankodlari = {"ankara": 312, "istanbul": 212, "bursa": 224};
  print(alankodlari);
  print("bursa :  ${alankodlari["bursa"]}");
  Map<String, dynamic> arjen = {
    "ad": "arjen",
    "soyad": "sari",
    "boy": 1.74,
    "kilo": 64,
    "yas": 21
  };
  arjen["sac rengi"] = "siyah"; //yeni key value ekleme
  print("$arjen");
  for (String s1 in arjen.keys) {
    //degere karsılık olan anahtarlar
    print("$s1 : ${arjen[s1]}");
  }
  for (dynamic s2 in arjen.values) {
    //anahtarların degerlerini alır
    print(s2);
  }
  for (var element in arjen.entries) {
    // ikisini beraber alır
    print("key : ${element.key} : degeri  :  ${element.value}");
  }
}
