import 'dart:async';
import 'package:http/http.dart' as http;

void main() async {
  final future = http.get(Uri.http('www.example.com'));
}
