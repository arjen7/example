//*********************************/
// dart degıskenlere null atamsına izin vermez buna non-nullable denir
// boylece programda null deger olmaz hata vermez (null sound)
// bunu istemiyorsanız ? koyarsınız böylece deger null olabilir
// ? koyarak nullable type bir veri oluşturulur
// ! koyarak null olmayacagını belirtiriz
// aynı kısımda bulunan bazı degerleri dartanlayabilir
// ama farklı kısımlarda bulunan yerler eger ki null olabilecek durumdaysa
// ! koymak zorundayız. null deger gelmeyecegini  belirtmek için
// late yazarak degiskenin kullanılmadan önce deger vereceğimizi söyleriz
// eger deger girmezsek hata verir
void main(List<String> args) {
  int? a; //nullable type oldu int yazmasına ragmen aritmetik yapılamaz
  print(" a nin  degeri : $a");
  List<String> liste = ["arjen", "hello", "naber"];
  print(liste);
  List<String?> nulldegerliliste = ["arjen", "naber", null, "deger"];
  // listede ki deger null ve bunu belirttik
  print(nulldegerliliste);
  List<String>? nullliste;
  // liste null bu yüzden listenin null olabilecegini belirttik
  print(nullliste);
  String cc = nulldegerliliste.first!;
  //listede null deger olabilecegi icin gelen degerin null olmayacagını belirttik
  print(" cc: $cc");
  int aa = nullolabilecekfonksiyon()!.abs(); // abs() mutlak deger alır
  // null olabilecek fonksiyonun null olmayacagını belirttik
  print("aa: $aa");
  late int axb;
  // late ile daha sonra deger alacagını belirttik
  axb = 77;
  print(axb);
}

int? nullolabilecekfonksiyon() {
  return 5;
}
