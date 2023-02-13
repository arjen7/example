void main(List<String> args) {
  //elemanlarısıralı olarak tutmaz index kullanılmaz
  //her eleman birbirinden farklı olur
  //eleman kontrolu için contains methodu kullanılır
  Set<String> isimler = Set();
  isimler.add("emre");
  isimler.add("ali");
  isimler.add("emre");
  isimler.add("ayse");
  isimler.add("emre");
  isimler.add("ayse");
  isimler.add("fatma");
  bool sonuc = isimler.remove("fatma"); //fatma varsa siler deger true olur
  print("sonuc=$sonuc\n");
  for (String s1 in isimler) {
    print("isim:$s1");
  }
  print("*******************");
  Set numaralar = Set.from([1, 2, 3, 4, 1, 1, 5, 3, 2, 4]);
  List ciftsayilar = [2, 4, 6, 8, 10, 8, 6, 4, 2, 10];
  for (int s1 in numaralar) {
    print("no:$s1");
  }
  print("********************");
  numaralar.clear(); //numaralar setinin içeriğini sildik
  numaralar.add(ciftsayilar); //numaralar setine cift sayi dizisini ekledik
  for (dynamic s1 in numaralar) {
    print("ciftsayilar:$s1");
  }
}
