void main() {
  final pato = new Pato();
  pato.volar();
  final delfine = new Delfine();
  delfine.nadar();
}

//clases principales
abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

/*Mis MIXINS
 * https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
 * */
abstract class Volador {
  void volar() => print("Estoy Volando!");
}

abstract class Nadador {
  void nadar() => print("Estoy Nadando!");
}

abstract class Caminante {
  void caminar() => print("Estoy Caminando!");
}

//clases que puedo instancear
class Delfine extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Pato extends Ave with Volador, Nadador, Caminante {}

class Tiburon extends Pez with Nadador {}
