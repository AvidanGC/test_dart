import 'dart:convert';

void main() {
  /*final wolverine = new Heroe('Logan', 'Regeneracion');
  print(wolverine.nombre);*/

  final rowJson = '{"nombre":"Logan", "poder": "Regeneracion"}';
  Map parseJSON = json.decode(rowJson);

  final wolverine = new Heroe.fromJson(parseJSON);

  print(wolverine.nombre);
  print(wolverine.poder);
}

class Square {
  //private variable
  double _lado = 0;

  set lado(double valor) {
    valor <= 0
        ? throw ('El lado no puede ser menor o igual a 0 !')
        : _lado = valor;
  }

  //return area for square
  double get area => _lado * _lado;

  String toString() => 'Lado: $_lado';
}

class MyClass {
  int value1 = 2;
  int value2 = 3;
  int value3 = 5;

  // Returns the product of the above values:
  int get product => value1 * value2 * value3;

  // Adds 1 to value1:
  void incrementValue1() => value1++;

  // Returns a string containing each item in the
  // list, separated by commas (e.g. 'a,b,c'):
  String joinWithCommas(List<String> strings) => strings.join(',');
}

class Heroe {
  String nombre = "Sin Nombre";
  String poder = "Sin Poder";

  //constructor tradicional
  Heroe(this.nombre, this.poder);

  //Constructor con Nombre
  Heroe.fromJson(Map parseJson) {
    nombre = parseJson['nombre'];
    poder = parseJson['poder'];
  }

  //method
  String toString() => 'nombre: $nombre - poder: $poder';
}
