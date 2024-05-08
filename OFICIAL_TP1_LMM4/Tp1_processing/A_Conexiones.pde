class Conexion {
  Estados estados;
  // DECLARO PINES CON VALOR INICIAL --> CAMBIARLOS A 1 CON EL CODIGO DE TATI
  int B1in = 0;
  int B2in = 0;
  int B3in = 0;
  int B4in = 0;
  // CONTADOR DE CONEXIONES EXITOSAS
  int cantidadTrue = 0;
  boolean[] conexionesBooleanas = new boolean[6]; // Arreglo para almacenar los estados
  int estadoActual = 0;

  Conexion () {
    estados = new Estados();
  }

  void conexiones() {
    cantidadTrue = 0; // Reiniciar el contador de estados verdaderos
    for (int i = 0; i < conexionesBooleanas.length; i++) {
      // Si el estado es verdadero, aumentar el contador
      if (conexionesBooleanas[i]) {
        cantidadTrue++;
      }
    }

    //RECORRIDO DE LA SEÑAL DE ARDUINO
    if (portStream != null) {
      //LARGO DEL STRING = CANTIDAD DE LINEAS MÁS 3, LETRA E = LARGO DEL STRING - 3
      if (portStream.length() == 8 && portStream.charAt(0) == 'S' && portStream.charAt(5) == 'E' ) {
        B1in = int(portStream.substring(1, 2)); // ojo1.1
        B2in = int(portStream.substring(2, 3)); // ojo1.2
        B3in = int(portStream.substring(3, 4)); // ojo2.1
        B4in = int(portStream.substring(4, 5)); // ojo2.2
        //B5in = int(portStream.substring(5, 6)); // boca1.1
        //B6in = int(portStream.substring(6, 7)); // boca1.2
        //B7in = int(portStream.substring(7, 8)); // nariz1.1
        //B8in = int(portStream.substring(8, 9)); // nariz1.2
        //B9in = int(portStream.substring(9, 10)); // oidos1.1
        //B10in = int(portStream.substring(10, 11)); // oidos1.2
        //B11in = int(portStream.substring(11, 12)); // oidos2.1
        //B12in = int(portStream.substring(12, 13)); // oidos2.2

        //CONDICIONALES EN PAR PARA VERIFICAR CONEXIÓN EXITOSA
        if (B1in == 1 && B2in == 1) { // ojo 1
          conexionesBooleanas[0] = true;
        } else {
          conexionesBooleanas[0] = false;
        }

        if (B3in == 1 && B4in == 1) { // ojo 2
          conexionesBooleanas[1] = true;
        } else {
          conexionesBooleanas[1] = false;
        }

        println(cantidadTrue);
      }
    }
  }

  void cambiarEstadoBooleana(int indice, boolean nuevoEstado) {
    conexionesBooleanas[indice] = nuevoEstado;
  }

  void pasoEstado() {
    if (cantidadTrue == 0) {
      estados.estado0();
      habla.amp(0.2);
    } else if (cantidadTrue == 1 ) {
      estados.estado1();
      habla.amp(0.55);
    } else if (cantidadTrue == 2 ) {
      estados.estado2();
    }
  }
}
