main() {
  
  double? b; //= 10 % 3;  obtener el residuo de una division
  double? c; // = 10 ~/ 3; // alt 126 ~ || devuelve la parte entera de division 

  int a = 1;
  ++a;

  int? numeroOpcional;
  numeroOpcional ??= 20; // si la variable es null, asignar 20
  // print(numeroOpcional);   
  
  // ========== OPERADORES CONDICIONALES 
  double numeroFinal = b ?? c ?? 20; 
  // print(numeroFinal);

  // ========== OPERADORES RELACIONALES: retornan un valor booleano
  int numeroUno = 1;
  String numeroDos = "2";
  print(numeroUno is! int); // is! : es diferente


}