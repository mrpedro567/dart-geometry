import 'Ponto.dart';

abstract class Forma{
  late Ponto _ponto;
  late double _raio; 

  double? calculaArea();
  double? calculaVolume();
  String toString();
}

abstract class FormaTridimensional extends Forma {

}

class FormaBidimensional implements Forma{
  late Ponto _ponto;
  late double _raio; 
  
  FormaBidimensional.filled(Ponto p, double r){
    this._ponto = p;
    this._raio = r;
  }

  FormaBidimensional.empty(){
    
  }

  @override
  double? calculaVolume(){
    return (_raio * _ponto.y);
  }

  double? calculaArea(){
    return (_raio * 4 * raio);  
  }

  Ponto get ponto => this._ponto;
  double get raio => this._raio;

  set ponto(Ponto p){
    this._ponto = p;
  }
  set raio(double r){
    this._raio = r;
  }
}

