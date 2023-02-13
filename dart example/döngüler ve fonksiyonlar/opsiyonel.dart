void main(List<String> args) {
  int toplam1 = toplam(5, 6);
  int carpim = carpma(5, b: 6);
  print("5 ve 6 nin toplam ve carpimlari:");
  print("toplam: $toplam1");
  print("carpim: $carpim");
}

int toplam([int x = 0, int y = 0, int z = 0]) => x + y + z;
//[] içine aldığımızda girilmesi zorunlu degildir
int carpma(int a, {int b = 1, int c = 1}) => a * b * c;
//{}içinde girildiğinde girilmesi zorunlu degildir
// [] ve {} aynı anda kullanılamaz
//degerler girilmediğinde null olacağı için hata verir
//hata vermesin diye başlangıç değeri verilir
//{} kullandığımızda mainde degisken adlarıyla tanımlama yapılır