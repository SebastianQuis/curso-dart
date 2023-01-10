main() {
  // enumeraciones
  Tipo producto = Tipo.antiguo;

  switch (producto) {
    case Tipo.antiguo  : print('Es un producto antiguo'); break;
    case Tipo.usado    : print('Es un producto usado'); break;
    case Tipo.seminuevo: print('Es un producto seminuevo'); break;
    case Tipo.nuevo    : print('Es un producto nuevo'); break;
    default: break;
  }
}

enum Tipo {
  antiguo,
  usado,
  seminuevo,
  nuevo
}