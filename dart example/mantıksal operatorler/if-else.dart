void main(List<String> args) {
  int sayi1 = 10;
  num sayi2 = 12;
  var sayi3 = 14;
  if (sayi1 < sayi2 && sayi1 < sayi3) {
    print("$sayi1 en kucuktur");
  } else if (sayi3 > sayi2) {
    print("$sayi3 buyuktur $sayi2");
  }
  if (sayi1 > sayi2) {
    print("$sayi2 buyuktur $sayi1");
  } else {
    print("$sayi1 kucuk esittir $sayi2");
  }
}
