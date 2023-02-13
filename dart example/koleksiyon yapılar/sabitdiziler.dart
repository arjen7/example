void main(List<String> args) {
  //sabit uzunluklu diziler
  List<int> dizi = List.filled(5, 0);
  // sayi adlı dizi int olucak
  //dizi 50 elemanlı ve varsayılan degerler 0 olucak
  print("dizi:$dizi");
  dizi[0] = 3;
  dizi[1] = 6;
  dizi[2] = 9;
  print("dizi:$dizi");
  print("dizi eleman sayisi:$dizi.length");
  print("dizi[2]=${dizi[2]}");
  List<String> dizi2 = List.filled(5, "");
  print("dizi2:$dizi2");
  dizi2[0] = "arjen";
  dizi2[1] = "emre";
  dizi2[2] = 65.toString();
  print("dizi2:$dizi2");
  List dizi3 = List.filled(5, 0);
  //dynamic olarak alır listeyi ve her türlü veri yapısını sağlar
  // List<dynamic> karisik = List<dynamic>.filled(5,0) la aynidir
  dizi3[0] = "arjen";
  dizi3[1] = false;
  dizi3[2] = 65;
  print("dizi3:$dizi3");
  for (dynamic deger in dizi3) {
    //deger dynamic bir veri tipidir
    //deger karisik dizisinden sırayla deger alır
    //i=0 dan başlatıp i++ yla karisik[i] deger olur her dongude dizi bitene kadar
    print("dizi3[${dizi3.indexOf(deger)}]:$deger");
  }
}
