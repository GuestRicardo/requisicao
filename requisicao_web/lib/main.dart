import 'dart:async';
import 'package:http/http.dart' as http;

void main() async {
  final future = http.get(Uri.https('www.example.com', '/'));

  future.then((response) {
    if (response.statusCode == 200) {
      print('Pagina carregada com sucesso(codigo 200)');
    }
    if (response.statusCode == 301) {
      print('Pagina movida permanentemente(codigo 301)');
    }
    if (response.statusCode == 404) {
      print('Pagina NAO econtrada(codigo 404)');
    }
    if (response.statusCode == 404) {
      print('erro interno no SERVIDOR(codigo 500)');
    }
  });
}
