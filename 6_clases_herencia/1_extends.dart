// DAR TODAS LAS PROPIEDADES Y METODOS DE UNA CLASE A OTRA.
class Moto{
  bool prendido = true;
  int llantas = 2;

  void apagar() {
    prendido = false;
    print('Se apagó!!');
  }
  
  void encender() {
    prendido = true;
    print('Se prendió!!');
  }
}

class Carro extends Moto {  
  int llantas = 4;
  double kilometraje = 103.45;
}
main() {
  
  final toyota = Carro();

  toyota.encender();
  toyota.apagar();
  print(toyota.llantas);
  
}