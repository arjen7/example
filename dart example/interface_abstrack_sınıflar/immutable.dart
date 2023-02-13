void main(List<String> args) {
  // final ile id ile isim aldık
  // artık degistirelemez oldular
  // const ile bellekteki adreslerini eşitledik
  // kurucuyu const yaptık ve yazımda gosterilen yeride const yaptık
  student arjen = const student(54, "arjen");
  const student arjen2 = student(54, "arjen");
  if (arjen == arjen2) {
    print("esittir");
  } else {
    print("esit degildir");
  }
}

class student {
  final int id;
  final String isim;
  const student(this.id, this.isim);
}
