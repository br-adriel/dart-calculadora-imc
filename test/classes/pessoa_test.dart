import 'package:calculadora_imc/classes/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  Pessoa pessoa = Pessoa('João', 1.72, 80);

  setUp(() {
    pessoa = Pessoa('João', 1.72, 80);
  });

  group('getters funcionam corretamente', () {
    test('retorna o nome esperado', () {
      expect(pessoa.nome, 'João');
    });

    test('retorna o peso esperado', () {
      expect(pessoa.peso, 80);
    });

    test('retorna a altura esperada', () {
      expect(pessoa.altura, 1.72);
    });
  });

  group('setters funcionam corretamente', () {
    test('nome é alterado para o nome passado', () {
      pessoa.nome = "Joaquim";
      expect(pessoa.nome, "Joaquim");
    });

    test('quando o nome passado é vazio ele não é alterado', () {
      pessoa.nome = "";
      expect(pessoa.nome, "João");

      pessoa.nome = " ";
      expect(pessoa.nome, "João");
    });

    test('peso é alterado quando maior que 0', () {
      pessoa.peso = 0.01;
      expect(pessoa.peso, 0.01);
    });

    test('peso não é alterado quando menor ou igual a 0', () {
      pessoa.peso = 0.00;
      expect(pessoa.peso, 80);

      pessoa.peso = -0.01;
      expect(pessoa.peso, 80);
    });

    test('altura é alterada quando maior que 0', () {
      pessoa.altura = 0.01;
      expect(pessoa.altura, 0.01);
    });

    test('altura não é alterada quando menor ou igual a 0', () {
      pessoa.altura = 0.00;
      expect(pessoa.altura, 1.72);

      pessoa.altura = -0.01;
      expect(pessoa.altura, 1.72);
    });
  });

  test('o IMC é calculado corretamente', () {
    expect(pessoa.imc, pessoa.peso / (pessoa.altura * pessoa.altura));
  });
}
