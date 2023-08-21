import 'package:calculadora_imc/classes/cli.dart';
import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/classes/validators.dart';
import 'package:calculadora_imc/utils/imc.dart';

void main(List<String> arguments) {
  Pessoa p;
  String nome;
  double altura, peso;

  print("--------------------------------------------------------------------");
  print("Calculadora de IMC -------------------------------------------------");
  print("");
  print("Olá, bem vindo(a) a calculadora de IMC, para começar precisamos de");
  print("algumas informações.");

  print("");
  nome = Cli.lerString(
    mensagem: ">> Qual o seu nome?",
    retornoPadrao: "Usuário",
  );

  print("");
  altura = Cli.lerDouble(
    mensagem: ">> Qual a sua altura (em metros)?",
    validadores: [
      Validators.doubleIsPositive,
      (double n) => Validators.doubleIsGreaterThan(n, 0),
    ],
  );

  print("");
  peso = Cli.lerDouble(
    mensagem: ">> Qual o seu peso (em Kg)?",
    validadores: [
      Validators.doubleIsPositive,
      (double n) => Validators.doubleIsGreaterThan(n, 0),
    ],
  );

  p = Pessoa(nome, altura, peso);

  print("Resultado ----------------------------------------------------------");
  print("Nome: $nome");
  print("Altura: ${altura.toStringAsFixed(2)} m");
  print("Peso: ${peso.toStringAsFixed(2)} Kg");
  print("--------------------------------------------------------------------");
  print("IMC: ${p.imc.toStringAsFixed(2)}");
  print("Status: ${Imc.getStatus(p.imc)}");
  print("--------------------------------------------------------------------");
}
