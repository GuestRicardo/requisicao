import 'dart:async';
import 'package:http/http.dart' as http;

void main() async {
  //identficador da url(esta sendo separado para poder editar quando preciso)
  final uri = Uri.https('www.example.com', '/');
  //vendo o q esta sendo construindo a sua url
  print(uri);
  final future = http.get(uri);
//resposta e forma de tratamento do codigo com resposta
  future.then((response) {
    if (response.statusCode == 200) {
      print('Pagina carregada com sucesso(codigo 200)');
      //aq esta sendo carregada a pagina(no sentido de exibição)
      print(response.body);
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
//agora o tratamento do erro
  //para obter mais informações no tratamento pode se usar o catchError
  future.catchError((onError) => print('Erro'));
//agora o tratamento se deu tudo certo, esta tudo ok e sera carregado
  future.whenComplete(() => print('pagina carregada(future completo)'));
}
