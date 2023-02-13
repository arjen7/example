void main(List<String> args) {
  veritabani db = oracledb();
  db.userdelete();
  db.usersave();
  userguncelle(db);
  veritabani db2 = firebasedb();
  userguncelle(db2);
  // oracle yerine firabaseye gecmek icin oracle yerine firebase yazmam yeterli olur
  // kolayca dosyaları degıstırme vs icin
}

void userguncelle(veritabani update) => update.userupdate();

abstract class veritabani {
  void usersave();
  void userupdate();
  void userdelete();
}

class oracledb extends veritabani {
  @override
  void userdelete() {
    print("oracledbden user silindi");
  }

  @override
  void usersave() {
    print("oracledbye user kaydedildi");
  }

  @override
  void userupdate() {
    print("oracledbden  user güncellendi");
  }
}

class firebasedb extends veritabani {
  @override
  void userdelete() {
    print("firebasedbden user silindi");
  }

  @override
  void usersave() {
    print("firebasedbye user kaydedildi");
  }

  @override
  void userupdate() {
    print("firebasedbden  user güncellendi");
  }
}
