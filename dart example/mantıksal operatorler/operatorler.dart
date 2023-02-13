void main(List<String> args) {
  var sayi1 = 9, sayi2 = 6;
  //aritmetik operatorler
  print("$sayi1 + $sayi2 esittir= ${sayi1 + sayi2}");
  print("$sayi1 - $sayi2 esittir= ${sayi1 - sayi2}");
  print("$sayi1 * $sayi2 esittir= ${sayi1 * sayi2}");
  print("$sayi1 / $sayi2 esittir= ${sayi1 / sayi2}");
  print("$sayi1 % $sayi2 esittir= ${sayi1 % sayi2}");
  //atama ve karsılastırma operatorleri
  sayi1 = sayi1 + 5;
  sayi2 += 5; // sayi2 = sayi2 + 5
  // +=, -=, *=, /=, %=
  // <, >, <=, >=, ==, !=
  if (sayi1 >= sayi2) {
    print("$sayi1 büyük esit $sayi2");
  } else {
    print("$sayi1 kucuktur $sayi2");
  }
}
