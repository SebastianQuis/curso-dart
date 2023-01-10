main() {
  
  Future<String> timeout = Future.delayed( Duration(seconds: 2), () {
    if (1 == 1) 
      throw 'throw lanza error!!!'; 
    
    return 'termina el future';
  });

  // timeout.then(print).catchError(print);
  timeout.then(print).catchError((error) => print(error));
  
  print('Fin del main');
}