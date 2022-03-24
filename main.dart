import 'Cilindro.dart';
import 'Lista.dart';
import 'Ponto.dart';
import 'circulo.dart';
import 'forma.dart';
import 'quadrado.dart';

void main(){
  Lista lista = Lista.empty();

  Quadrado q1 = Quadrado.filled(Ponto(0, 0), 10);
  Quadrado q2 = Quadrado.filled(Ponto(1, 5), 8);
  Circulo c1 = Circulo.filled(Ponto(0, 2), 5);
  Circulo c2 = Circulo.filled(Ponto(2, 2), 10);
  Cilindro cl1 = Cilindro();

  /**
   * EXEMPLO DE POLIMORFISMO 
   * NESSE CASO A LISTA TRABALHA APENAS COM FORMAS
   * ENTÃO, TANTO O CIRCULO QUANTO O CILINDRO SÃO FORMAS PARA A LISTA 
   * MAS AO MESMO TEMPO SÃO UM CILINDRO E UM CIRCULO
   */

  lista.add(q1);
  lista.add(q2);
  lista.add(c1);
  lista.add(q2);
//  lista.add(cl1);
  lista.mostraAreas();
  print(q1.toString());
  print(q2.toString());
  print(c1.toString());
  print(q2.toString());
  print(cl1.toString());
}