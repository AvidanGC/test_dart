/**implementacion de clase abstracta */

void main() {
  final perro = new Perro();
  perro.emitirSonido();
  final gato = new Gato();
  gato.emitirSonido();
}

abstract class Animal {
  int patas = 0;
  void emitirSonido();
}

class Perro implements Animal {
  int patas = 0;
  void emitirSonido() => print('Guaa Guaaa!');
}

class Gato implements Animal {
  int patas = 0;
  void emitirSonido() => print('miuuu miuu!');
}
