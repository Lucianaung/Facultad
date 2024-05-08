class Conexion {

  int B1in = 1;
  int B2in = 1;
  //int B3in = 1;
  //int B4in = 1;

  int contadorConexiones = 0;

  Estados estados;

  Conexion () {
    estados = new Estados();
  }

  void conexiones() {
    if (portStream != null) {
      if (portStream.length() == 6 && portStream.charAt(0) == 'S' && portStream.charAt(3) == 'E' ) { //si son 12 pines, el arreglo mide 15
        B1in = int(portStream.substring(1, 2)); // ojo1.1
        B2in = int(portStream.substring(2, 3)); // ojo1.2
        //B3in = int(portStream.substring(3, 4)); // ojo2.1
        //B4in = int(portStream.substring(4, 5)); // ojo2.2
        //B5in = int(portStream.substring(5, 6)); // boca1.1
        //B6in = int(portStream.substring(6, 7)); // boca1.2
        //B7in = int(portStream.substring(7, 8)); // nariz1.1
        //B8in = int(portStream.substring(8, 9)); // nariz1.2
        //B9in = int(portStream.substring(9, 10)); // oidos1.1
        //B10in = int(portStream.substring(10, 11)); // oidos1.2
        //B11in = int(portStream.substring(11, 12)); // oidos2.1
        //B12in = int(portStream.substring(12, 13)); // oidos2.2

        //conexión de OJO 1
        if (B1in == 0 && B2in == 0) {
          println("Ojo1Conectado");
          contadorConexiones+=1;
          println(contadorConexiones);
        } 
      }
    }
  }

  void pasoEstado() {
  println(contadorConexiones);
    estados.estado1();

    if (contadorConexiones == 1) {
      estados.estado2();
    }

    if (contadorConexiones == 2) {
      estados.estado3();
    }
  }
}
