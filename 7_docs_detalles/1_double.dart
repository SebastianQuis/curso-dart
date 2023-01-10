main() {
  double numero = -15;
  double numeroInfinito = double.infinity;

  print('firma: ${numero.sign} :: $numero'); // POSITIVO: 1 // NEGATIVO: -1
  print('isFinite: ${numero.isFinite} :: $numero');
  print('isFinite: ${numeroInfinito.isFinite} :: $numeroInfinito');

  print('abs: ${numero.abs()} :: $numero'); // VALOR ABSOLUTO
  print('ceil: ${numero.ceil()} :: $numero'); // SIGUIENTE NUMERO ENTERO
  
  print('ceilToDouble: ${numero.ceilToDouble()} :: $numero'); // SIGUIENTE NUMERO ENTERO PERO DOUBLE

  print('round: ${numero.round()} :: $numero'); // REDONDEA, RESPETA .5
  print('roundToDouble: ${numero.roundToDouble()} :: $numero');
  
  print('clamp: ${numero.clamp(1, 10)} :: $numero'); // EVALUA EL NUMERO Y SE CONVIERTE EN ESE.
}