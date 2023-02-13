// lambda : ismi olmayan fonksiyonlardır. dartta her fonksiyon aslında bir nesnedir.
void main(List<String> args) {
  Function fonksiyon1 = (int a, int b) {
    int toplam = a + b;
    print(toplam);
  };
  fonksiyon1(5, 8);
  // lambdayı kullanırken fonksiyon gibi kullanırız
  var f1 = (int x) => x * 2;
  toplama(f1(5), f1(6));
}

//normal fonksiyon
void toplama(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
