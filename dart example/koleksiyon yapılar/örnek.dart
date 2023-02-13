import 'dart:io';

void main(List<String> args) {
// bir listeyi oluşturup eleman ekleyip elemanları sırayla yazdırma
  List sehir = ["van", "istanbul", "izmir"];
  sehir.add("batman");
  for (String sehir in sehir) {
    print("sehir:$sehir");
  }
// map oluşturup içeriği ekrana yazdırma
  var mymap = {"işlemci": 2, "ram": 8, "ssd": true};
  for (dynamic deger in mymap.entries) {
    print("${deger.key} : ${deger.value}");
  }
// kullanıcıdan pzoitif deger alıp 0 girildiğinde ortalamasını yazdırma
  print(" girdiginiz pozitif sayilarin ortalamasini alma");
  print(" not : 0 girildiginde program sonlandirilir");
  double ortalama = 0;
  int j = 0, toplam = 0;
  List<int> deger = [];
  for (int i = 0; i < 1; i) {
    deger.add(int.parse(stdin.readLineSync()!));
    toplam += deger.elementAt(j); //deger[j] demek
    deger.contains(0) ? i++ : j++;
    ortalama = toplam / (j);
  }
  print("girdiginiz sayilarin ortalamasi : ${ortalama}");
  // 5 elemanlı iki listeyi sette birleştirip karelerini yazdırma
  List eleman = [1, 2, 3, 4, 5];
  List eleman2 = [1, 6, 3, 9, 8];
  Set elemanlar = {...eleman, ...eleman2};
  for (int h in elemanlar) {
    print(h * h);
  }
  // 3 tane sehrin adı ilçe sayısı plaka kodunu maple göstterimi
  List<Map> sehirler = [];
  Map sehir1 = {"il adi": "ankara", "ilçe sayisi": 15, "plaka kodu": 5};
  Map sehir2 = {"il adi": "istanbul", "ilçe sayisi": 7, "plaka kodu": 37};
  Map sehir3 = {"il adi": "izmir", "ilçe sayisi": 6, "plaka kodu": 24};
  sehirler.add(sehir1);
  sehirler.add(sehir2);
  sehirler.add(sehir3);
  print(sehirler);
  print(sehirler[0]["il adi"]);
  // 0 indeksin il adi karşılığını verir
}
