import 'Forma.dart';

class Cilindro implements FormaTridimensional{
  @override
  double? calculaArea() {
    throw UnimplementedError();
  }

  @override
  double? calculaVolume() {
    throw UnimplementedError();
  }

  @override
  String toString() {
    print('Cilindro.toString()');

    return super.toString();
  }
}