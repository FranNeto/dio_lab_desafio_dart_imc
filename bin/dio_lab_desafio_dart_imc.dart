import 'dart:io';
import 'dart:convert';
import 'package:dio_lab_desafio_dart_imc/imc.dart';


void main(List<String> arguments) {
  try {
    print("Digite seu nome: ");
    String nome = stdin.readLineSync(encoding: utf8) ?? "Nome";

    print("Digite seu peso (em kg): ");
    double peso = double.parse(stdin.readLineSync(encoding: utf8) ?? "0");

    print("Digite sua altura (em metros): ");
    double altura = double.parse(stdin.readLineSync(encoding: utf8) ?? "0");

    Pessoa pessoa = Pessoa(nome, peso, altura);

    double imc = calcularIMC(pessoa);

    print("O IMC de ${pessoa.nome} é: ${imc.toStringAsFixed(2)}");
    print("Classificação do IMC: ${classificarIMC(imc)}");

  } catch (exception) {
    print("Operação inválida! $exception");
  }
}
