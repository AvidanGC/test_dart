void main() {
  final superman = new Heroe();
  superman.nombre = "Avidan";

  final luthor = new Villano();
  luthor.nombre = "Clark Luthor";
}

abstract class Personaje {
  String poder = "";
  String nombre = "";
}

class Heroe extends Personaje {
  String valentia = "";
}

class Villano extends Personaje {
  String maldad = "";
}
