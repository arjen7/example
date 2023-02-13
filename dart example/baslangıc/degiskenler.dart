void main(List<String> args) {
  int yas = 8;
  double ort = 5.6;
  num no = 5, ortalama = 5.6; //int ve double olur
  print("yas :$yas");
  print("ortalama: $ort");
  print("ortalama + no:" + (no + ortalama).toString()); //toplamını yazar
  String ad = "arjen", soyad = "sari";
  print("ad +' '+ soyad:" + (ad + ' ' + soyad));
  print(ad + "in kodlari");
  bool erkekmi = true;
  bool issizmi = true;
  print("erkekmi:$erkekmi");
  print("issizmi:$issizmi");
  var okul = "batman"; //otomotik string algıladı
  var okulno = 549; //otomotik int algıladı
  var tembelmi = false; //otomotik bool algıladı
  print("okul:$okul");
  print("okul no:$okulno");
  print("tembelmi:$tembelmi");
}
