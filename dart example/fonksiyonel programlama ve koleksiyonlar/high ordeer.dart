//
//high order fonctions : bir fonksiyonu
// parametre olarak alan ve geriye bir fonkisyon  döndüren
//fonksiyonlardır. ikisi de ayni anda yapilabilir.
void main(List<String> args) {
  List<int> liste = [1, 2, 3];
  liste.forEach((element) {
    print("element $element");
  });
  liste.forEach(callback);
  kendiforeeachyapi(liste, (int deger, int index) {
    print("deger : $deger");
    print("index : $index");
  });
}

void kendiforeeachyapi(List<int> liste, Function calback) {
  for (var i = 0; i < liste.length; i++) {
    calback(liste[i], i);
  }
}

void callback(int element) {
  print("liste elemani : $element");
}
