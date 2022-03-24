class Ponto{
  late double _x;
  late double _y;

  Ponto(double x, double y){
    this._x = x;
    this._y = y;
  }

  double get x => this._x;
  double get y => this._y;

  set x(double value){
    this._x = value;
  }

  set y(double value){
    this._y = value;
  }
}