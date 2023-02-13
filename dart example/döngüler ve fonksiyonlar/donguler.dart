void main(List<String> args) {
  int x = 5, i = 0, toplam = 0, carpim = 1;
  double bolme = 1;
  for (i; i < x; i++) {
    toplam += x;
  }
  print("toplam:$toplam");
  i = 0;
  while (i < x) {
    carpim *= x;
    i++;
  }
  print("carpim:$carpim");
  i = 0;
  do {
    bolme /= (carpim * toplam).toDouble();
    i++;
  } while (i < x);
  print("bolme:$bolme");
  List liste = ["emre", "ali", "hasan"]; //dizi liste
  for (String gecici in liste) {
    //geciciye sırayla listedeki degerleritanımlar
    print("liste[${liste.indexOf(gecici)}]:$gecici");
    //liste.indexOf(gecici) gecici hangi dizi indexi ise onu verir
  }
}
