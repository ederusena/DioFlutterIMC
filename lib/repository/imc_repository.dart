import 'package:dio_imc_flutter/models/imc.dart';

class ImcRepository {
  final List<Imc> _imc = [];

  Future<void> adicionar(Imc imc) async {
    await Future.delayed(const Duration(microseconds: 200));
    _imc.add(imc);
  }

  Future<List<Imc>> listar() async {
    await Future.delayed(const Duration(microseconds: 200));
    return _imc;
  }

  Future<double> calculateImc(double weight, double height) async {
    await Future.delayed(const Duration(microseconds: 100));
    return weight / (height * height);
  }

  Future<String> getImcStatus(double imc) async {
    await Future.delayed(const Duration(microseconds: 100));
    if (imc < 18.5) {
      return "Abaixo do peso";
    } else if (imc >= 18.5 && imc < 25) {
      return "Peso normal";
    } else if (imc >= 25 && imc < 30) {
      return "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      return "Obesidade grau 1";
    } else if (imc >= 35 && imc < 40) {
      return "Obesidade grau 2";
    } else {
      return "Obesidade grau 3";
    }
  }
}
