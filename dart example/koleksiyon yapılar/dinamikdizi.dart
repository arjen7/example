void main(List<String> args) {
  List<int?> dizi1 = []; //liste kaç elemanlı belli degil
  dizi1.add(0); //diziye 0 diye bir eleman ekledik
  dizi1.add(1); //diziye 1 diye bir eleman ekledik
  dizi1.add(2); //diziye 2 diye bir eleman ekledik
  dizi1.add(3); //diziye 3 diye bir eleman ekledik
  print("dizi1:$dizi1");
  print("dizi1 eleman sayisi:${dizi1.length}");
  dizi1.length = 5; //dizinin uzunulugu 5 oldu
  /* eger int? koymasaydık diziyi 5 eleman yaptıgımız ve
  dizinin tüm elemanlarına deger atamadıgımız için null hatası verirdi.
  hata vermesin diye null olabilecegini belirttik */
  print("dizi1:$dizi1");
  List<int> dizi2 = [1, 2, 3]; //3 elemanı var
  dizi2.add(21); // yeni eleman ekleyebiliyoruz
  print("dizi2:$dizi2");
  List<int> dizi3 = List.filled(5, 0, growable: true);
  //growable : true listenin sınırlanmadıgını gösterir
  //listeye eleman eklenebilir
  dizi3.add(5); //listemiz artık 6 elemanlı
  print("dizi3 eleman sayisi:${dizi3.length}");
  List<int> dizi4 = List.empty(growable: true);
  // List<int?> sayilar4 = []; ile aynı şey demek
  dizi4.add(4); //bos listeye bir eleman ekledik
  print("dizi4:$dizi4"); //listemiz tek elemanlı
}
