void main(List<String> args) {
  print("anne cocugu ekmek almaya yolllar");
  uzunsurenislem();
  print("peynir zeytin hazirlanir");
  print("kahvalti hazir");
}

void uzunsurenislem() {
  Future.delayed(Duration(seconds: 3), () {
    print("cocuk ekmekle eve gelir");
  });
}
