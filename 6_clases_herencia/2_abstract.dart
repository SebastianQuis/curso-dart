// CLASE ABSTRACT NO PUEDE SER INICIALIZADA, SOLO EXTENDIDA 
// Y SIRVE PARA ESTABLECER METODOS Y PROPIEDADES
abstract class Vehiculo{
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

  bool revisarMotor(); 
}

class Carro extends Vehiculo {  
  int llantas = 4;
  double kilometraje = 103.45;
  
  @override
  bool revisarMotor() {
    print('Motor revisado');
    return true;
  }
}

main() {
  final toyota = Carro();

  toyota.encender();
  toyota.revisarMotor();
  print(toyota.llantas);
}