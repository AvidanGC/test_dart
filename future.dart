/**
 * Simulacion de petion HTTP, para probar los Future
 * Future peticion ASINCRONA.
 * */
void main() {
  print('Solicitando Datos...');
  httpGet('http://api.avidan.com/v1/services').then((d) => print(d));

  print('Ultima linea'); //probando la peticion asincrona..
}

Future<String> httpGet(String url) {
  return Future.delayed(new Duration(seconds: 4), () => 'Services!');
}
