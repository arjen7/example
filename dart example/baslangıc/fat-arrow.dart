void main(List<String> args) {
  print("toplam:${toplam(6, 5)}");
  print("max olan ${maxolanibul(5, 6)}");
  print("min olan ${minolanibul(5, 6)}");
}

toplam(int x, int y) => x + y;
//fat-arrow kullanımı => şeklinde
//ve tek satır olmak zorunda
maxolanibul(int x, int y) => x < y ? y : x;
// tek satır olmak zorunda kısa if kullanımı
minolanibul(int x, int y) => x < y ? x : y;
//kısa if ve fat-arrow kullanımı
