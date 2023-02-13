void main(List<String> args) {
  print("program basladi");
// hata cıkabilecek durumlarda kullanırız
// try durumu dener
// eger olmaz ise on ile baslayan olabilecegini bildigimiz hataysa o kısım calısır
// eger degilse catch ile yazdıgımız kısım calısır
// finally ise her türlü calısacak olan kısım için kullanılır
  try {
    int sayi = 100 ~/ int.parse("arjen");
    print(sayi);
  } on FormatException catch (e) {
    print(e.message);
    print(e.source);
  } catch (e) {
    print("hata cikti $e");
  } finally {
    print("islem bitti");
  }
  print("program bitti");
}
