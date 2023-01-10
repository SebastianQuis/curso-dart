main() {

  // for (int i = 0; i < 10; i++) {
  //   if (i == 5) continue; // no registra el 5
  //   print(i);

  //   if (i == 2) break; // rompe en 2
  // }

  // ============= FOR CON ETIQUETAS
  primerLoop:
  for (int i = 0; i < 5; i++) {
    print('valor i : $i');
    
    segundoLoop:
    for (int j = 0; j < 5; j++) {
      print('valor j : $j');
      if (j == 2) {
        break segundoLoop;
      }
    }
  }

}