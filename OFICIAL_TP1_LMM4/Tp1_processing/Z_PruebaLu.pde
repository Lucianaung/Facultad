/* PRUEBAS CON MI ARDUINO Y PROTO DE 6 BOTONES
class Conexion {
  EstadosVisual estadosVisual;
  EstadosSonido estadosSonido;
  // DECLARO PINES CON VALOR INICIAL --> CAMBIARLOS A 1 CON EL CODIGO DE TATI
  int B1in = 0;
  int B2in = 0;
  int B3in = 0;
  int B4in = 0;
  int B5in = 0;
  int B6in = 0;
  //int B7in = 0;
  //int B8in = 0;
  //int B9in = 0;
  //int B10in = 0;
  //int B11in = 0;
  //int B12in = 0;
  
  // CONTADOR DE CONEXIONES EXITOSAS
  int cantidadTrue = 0;
  boolean[] conexionesBooleanas = new boolean[7]; // Arreglo para almacenar los estados

  Conexion () {
    estadosVisual = new EstadosVisual();
    estadosSonido = new EstadosSonido();
  }

  void conexiones() {
    //CONTADOR DE VALOR TRUE
    cantidadTrue = 0; // Reiniciar el contador de estados verdaderos
    for (int i = 0; i < conexionesBooleanas.length; i++) {
      // Si el estado es verdadero, aumentar el contador
      if (conexionesBooleanas[i]) {
        cantidadTrue++;
      }
    }

    //RECORRIDO DE LA SEÑAL DE ARDUINO
    if (portStream != null) {
      //LARGO DEL STRING = CANTIDAD DE CARACTERES (NUM + S + E) MÁS 2, LETRA E = LARGO DEL STRING - 3
      if (portStream.length() == 10 && portStream.charAt(0) == 'S' && portStream.charAt(7) == 'E' ) { //S000000E --> 8 CARACTERES
        B1in = int(portStream.substring(1, 2)); // ojo1.1
        B2in = int(portStream.substring(2, 3)); // ojo1.2
        B3in = int(portStream.substring(3, 4)); // ojo2.1
        B4in = int(portStream.substring(4, 5)); // ojo2.2
        B5in = int(portStream.substring(5, 6)); // boca1.1
        B6in = int(portStream.substring(6, 7)); // boca1.2
        //B7in = int(portStream.substring(7, 8)); // nariz1.1
        //B8in = int(portStream.substring(8, 9)); // nariz1.2
        //B9in = int(portStream.substring(9, 10)); // oidos1.1
        //B10in = int(portStream.substring(10, 11)); // oidos1.2
        //B11in = int(portStream.substring(11, 12)); // oidos2.1
        //B12in = int(portStream.substring(12, 13)); // oidos2.2

        //CONDICIONALES EN PAR PARA VERIFICAR CONEXIÓN EXITOSA
        if (B1in == 1 ) { // ojo
          conexionesBooleanas[1] = true;
        } else {
          conexionesBooleanas[1] = false;
        }

        if (B2in == 1 ) { // ojo 2
          conexionesBooleanas[2] = true;
        } else {
          conexionesBooleanas[2] = false;
        }

        if (B3in == 1 ) { // ojo 2
          conexionesBooleanas[3] = true;
        } else {
          conexionesBooleanas[3] = false;
        }

        if (B4in == 1 ) { // ojo 2
          conexionesBooleanas[4] = true;
        } else {
          conexionesBooleanas[4] = false;
        }

        if (B5in == 1 ) { // ojo 2
          conexionesBooleanas[5] = true;
        } else {
          conexionesBooleanas[5] = false;
        }

        if (B6in == 1 ) { // ojo 2
          conexionesBooleanas[6] = true;
        } else {
          conexionesBooleanas[6] = false;
        }
      }
    }
  }

  void cambiarEstadoBooleana(int indice, boolean nuevoEstado) {
    conexionesBooleanas[indice] = nuevoEstado;
  }
  void pasoEstado() {

    if (cantidadTrue == 0) {
      estadosVisual.estado0();
      estadosSonido.estado0();
    } else if (cantidadTrue == 1 ) {
      estadosVisual.estado1();
      estadosSonido.estado1();
    } else if (cantidadTrue == 2 ) {
      estadosVisual.estado2();
      estadosSonido.estado2();
    } else if (cantidadTrue == 3 ) {
      estadosVisual.estado3();
      estadosSonido.estado3();
    } else if (cantidadTrue == 4 ) {
      estadosVisual.estado4();
      estadosSonido.estado4();
    } else if (cantidadTrue == 5 ) {
      estadosVisual.estado5();
      estadosSonido.estado5();
    } else if (cantidadTrue == 6 ) {
      estadosVisual.estado6();
      estadosSonido.estado6();
    }
  }
}
*/
