import 'dart:convert';
import 'dart:io';

class Cli {
  static String lerString({String? mensagem, String? retornoPadrao}) {
    if (mensagem != null) print(mensagem);
    String? entrada = stdin.readLineSync(encoding: utf8);

    if (entrada == null) return retornoPadrao ?? "";
    entrada = entrada.trim();

    if (entrada.isEmpty) return retornoPadrao ?? "";
    return entrada;
  }
}
