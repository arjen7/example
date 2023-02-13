void main(List<String> args) {
  Araba honda = Araba("honda", 2022, true);
  /*honda.marka = "honda";
  honda.modelyili = 2022;
  honda.otomotikmi = true;*/
  honda.bilgilerisoyle();
  Araba bmw = Araba("bmw", 2022, false);
  bmw.bilgilerisoyle();
}

class Araba {
  String? marka;
  int? modelyili;
  bool? otomotikmi;

  void bilgilerisoyle() {
    print("marka : $marka model yılı : $modelyili otomotikmi : $otomotikmi");
  }

  Araba(String marka, int modelyili, otomotikmi) {
    print("kurucu yapı calıstı");
    print("marka : $marka model yılı : $modelyili otomotikmi : $otomotikmi");
    // araba(){} şeklinde bir yapı vardır görünmeyen
    // istersek kullanırız ve birden fazla olmaz
    //her zaman ilk çalışan yapıdır
  }
}
