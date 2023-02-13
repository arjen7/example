// dart dilinde interface olayı yoktur, ımplements ile interface taklit edilir
// ınterface ortak ozelligi olan ama aynı ust sınıftan
// olmayan sınıfların birbirine kalıtılmasıdır
// ınterface olan sınıfların methodları implement eden sınıflarda
// kullanılmak zorundadır
// implements sayesinde dart dilinde coklu kalıtım saglanabilir
// bir sınıf birden fazla sınıf icin implements kullanabilir
void main(List<String> args) {
  kopek karabas = kopek();
  karabas.havla();
  karabas.kos();
}

abstract class havlayabilenler {
  void havla();
}

abstract class kosabilenler {
  void kos();
}

class kopek implements kosabilenler, havlayabilenler {
  @override
  void havla() {
    print("hav hav hav");
  }

  @override
  void kos() {
    print("kopek kosmaya basladı");
  }
}
