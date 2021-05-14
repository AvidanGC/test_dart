/**
 * Simulacion de petion HTTP, para probar los Future
 * Future con Async AND Await.
 * */
void main() async {
  print('Solicitando Datos...');

  String data = await httpGet('http://api.consola.com/v1/services');
  print(data);

  print('Ultima linea');
}

Future<String> httpGet(String url) {
  return Future.delayed(new Duration(seconds: 4), () => 'Services!');
}
