import 'Cilindro.dart';
import 'Circulo.dart';
import 'Forma.dart';
import 'quadrado.dart';

class Lista {
  late List<Forma> _formas;

  Lista.empty(){
    this._formas = List.empty(growable: true);
  }

  Lista.filled(List<Forma> l){
    this._formas = l;
  }


  /**
   * Adiciona uma Forma na Lista e Retorna se a operação foi bem sucedida ou não
   */
  bool? add(Forma forma){
    try{
      this._formas.add(forma);
      return true;
    }
    on Exception catch(e){
      print('Exeption: $e');
      return false;
    }
    catch(e){
      print('Error: $e');
      return false;
    }
  } 

  /**
   * Retorna a Quantidade de cilindros na Lista
   */
  int? qtdeCilindros(){
    Iterator i = this._formas.iterator;
    int count = 0;

    while(i.moveNext()){
      if(i.current is Cilindro){
        count++;
      }
    }

    return count;
  }

  /**
   * Retorna a quantidade de Circulos na Lista
   */
  int? qtdeCirculos(){
    Iterator<Forma> i = this._formas.iterator;
    int count = 0;

    while(i.moveNext()){
      if(i.current is Circulo){
        count++;
      }
    }

    return count;
  }

  /**
   * Retorna Quantidade de Quadrados na Lista
   */
  int? qtdeQuadrados(){
    Iterator<Forma> i = this._formas.iterator;
    int count = 0;

    while(i.moveNext()){
      if(i.current is Quadrado){
        count++;
      }
    }

    return count;
  }

  /**
   * Imprime as Áreas de cada Elemento da Lista de Formas
   */
  String? mostraAreas(){
    String ans = ''; 
    Iterator<Forma> i = this._formas.iterator;

    while(i.moveNext()){
      ans.padRight(1, i.current.calculaArea().toString());
    }

    return ans;
  }

  /**
   * Imprime os Volumes de cada Elemento da Lista de Formas
   */
  String? mostraVolumes(){
    String ans = ''; 
    Iterator<Forma> i = this._formas.iterator;

    while(i.moveNext()){
      ans.padRight(1, i.current.calculaVolume().toString());
    }

    return ans;
  }

  /**
   * Getters and Setters 
   */
  List<Forma> get formas => this._formas;

  set forma(List<Forma> f){
    this._formas = f;
  }
}