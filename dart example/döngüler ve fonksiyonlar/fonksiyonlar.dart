void main(List<String> args) {
  cevrehesapla();
  print("alan:${alanhesapla(5, 10)}");
}

cevrehesapla() {
  int en = 5, boy = 6;
  int cevre = (en + boy) * 2;
  print("cevre:$cevre");
}

alanhesapla(int sayi1, int sayi2) {
  int alan = sayi1 * sayi2;
  return alan;
}
