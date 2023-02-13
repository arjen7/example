void main(List<String> args) {
// ust sınıf gösterip alt sınıfa tanımayabilirz
// upcasting yukarı çevrim
  user user1 = user();
  var user2 = normaluser();
  adminuser user3 = adminuser();
  misafiruser user4 = misafiruser();
  user user5 = adminuser();
  user user6 = normaluser();
  List<user> tumuserlar = [];
  tumuserlar.add(user1);
  tumuserlar.add(user6);
  tumuserlar.add(user3);
  test(user2);
  test(user4);
  test(user5);
}

void test(user kullanici) {
  kullanici.baglan();
}

class user {
  void baglan() {
    print("user baglandi");
  }
}

class adminuser extends user {
  @override
  void baglan() {
    print("admin baglandi");
  }
}

class normaluser extends user {
  @override
  void baglan() {
    print("normaluser baglandi");
  }
}

class misafiruser extends normaluser {
  @override
  void baglan() {
    print("misafir olarak baglanildi");
  }
}
