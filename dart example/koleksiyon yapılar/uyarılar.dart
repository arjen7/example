void main(List<String> args) {
  var listem = <int>[]; //bir liste tanımladık
  var myset = <String>{}; //bir set tanımladık
  var myset2 = {"arjen"}; // set tanımladık
  // var myset = {"arjen"} : settir
  // var myset = {"arjen":21} : maptir
  var mymap = <String, dynamic>{}; // map tanımladık
  var mymap2 = {"yas": 21}; //map tanımladık
  var teksayilar = [1, 3, 5, 7, 9];
  var ciftsayilar = [0, 2, 4, 6, 8];
  //listem.addAll(teksayilar);
  //istem.addAll(ciftsayilar);
  //spread operator: yukarıda ki işlemi yapar
  listem = [...teksayilar, ...ciftsayilar]; // spread kullanımı
  print(listem);
  mymap = {...mymap2}; // mymap2 nin elemanlarını mymap e ekledik
  myset = {...myset2}; // myset2 nin elemanlarını myset e ekledik
  print("mymap : $mymap ; myset : $myset");
}
