void main(List<String> args) {
  // final ile bellek const ile degiskenin kendisini sabitleriz
  // const calısmadan önce degeri bilinen seyler için kullanırız
  // finali degeri calısma anında getirecekken kullanırız
  final tarih = DateTime.now();
  print(tarih);
  // final ile derleme sırasındaki tarihi alıp yazabilirken
  //const ile bunu yapamayız
  const liste = [1, 2];
  const liste2 = [1, 2];
  if (liste == liste2) {
    print("esittir");
  } else {
    print("esit degildir");
  }
  // const ile olusturan 2 aynı listede aynı bellegi gosterir
  // bellek tasarufu saglar liste sabittir icerigi degistirilemez
  // final ile olusturan 2 aynı liste farklı bellekleri gosterir
  // bu yüzden esit degildir. liste degistirilebilir
  final dizi = [1, 2, 3];
  final dizi2 = [1, 2, 3];
  if (dizi == dizi2) {
    print("esittir");
  } else {
    print("esit degildir");
  }
  dizi.add(4);
  dizi.remove(1);
  print(dizi);
}
