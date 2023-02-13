void main(List<String> args) {
  //diziye eleman ekleme cıkarma silme sabit dizlerde olmaz
  List<int> dizi = [10, 5, 7, 9, 11];
  if (dizi.isNotEmpty) {
    //eger dizi bos degilse demek
    print("dizi:$dizi");
    print("ilk eleman:${dizi.first}"); //dizi.first = dizi[0]
    print("son eleman:${dizi.last}"); //dizi.last = dizi[son index]
  }
  print("bos mu? : ${dizi.isEmpty}"); //dizi boşsa true değilse false
  print("eleman sayisi: ${dizi.length}"); //dizi eleman sayisi
  print("ters yazdirma${dizi.reversed}"); //diziyi tersten yazdirir
  dizi.add(21); //diziye eleman ekledik
  print("eleman eklenmis dizimiz:$dizi");
  dizi.remove(10); //dizide ki degeri 10 olan ilk elemanını siler
  print("diziden 10 elemanini sildik:$dizi");
  dizi.removeAt(2); //dizi[2] yi siler. 2. indexi siler
  print("dizi[2] yi sildik:$dizi");
  print("dizide 9 elemanı var mi kontrol ediyoruz");
  dizi.contains(9) ? print("listede 9 var") : print("listede 9 yok");
  //if (dizi.contains(9)) ile aynıdır. dizide 9 varsa true yoksa false
  print("dizi[3]:${dizi.elementAt(3)}"); //dizi[3] yazdirir. 3. indexi yani
  print("11 dizi[?]:${dizi.indexOf(11)}"); // 11 elemanının indexini verir
  print("dizimiz $dizi");
  dizi.shuffle(); //diziyi kalıcı olarak rastgele karıstırır
  print("rastegele karistirdigimiz dizi:$dizi");
  dizi.clear(); //dizide ki tüm elemanlari siler
  print("silinmis dizi:$dizi");
}
