import 'Forma.dart';
import 'Ponto.dart';

class Quadrado extends FormaBidimensional{
  
  Quadrado.filled(Ponto p, double r):super.empty(){
    this.ponto = p;
    this.raio = r;
  }

  Quadrado.empty():super.empty(){

  }

  /**
   * Calcula a área do Quadrado.
   */
  @override
  double? calculaArea() {
    return ((this.raio * 2) * (this.raio * 2));
  }

  @override
  String toString() {
    print('Quadrado.toString()');

    return super.toString();
  }
}