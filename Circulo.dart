import 'Forma.dart';
import 'dart:math';
import 'Ponto.dart';

class Circulo extends FormaBidimensional{
  
  /**
   * Contructor para circulo com Ponto e Raio  
   */
  Circulo.filled(Ponto p, double r):super.empty(){
    this.ponto = p;
    this.raio = r;
  }
  
  /**
   * Calcula a area do Circulo;
   */
  @override
  double? calculaArea() {
    return (pi * pow(this.raio, 2));
  }

  @override
  String toString() {
    return super.toString();
  }  
}