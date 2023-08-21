import 'dart:convert';
import 'dart:io';

class Cli {
  static String lerString({String? mensagem}) {
    if (mensagem != null) print(mensagem);
    return stdin.readLineSync(encoding: utf8) ?? "";
  }
}
