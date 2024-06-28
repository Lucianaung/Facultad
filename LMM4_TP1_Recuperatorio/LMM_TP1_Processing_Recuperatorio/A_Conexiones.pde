//class Conexion {
//  EstadosVisual estadosVisual;
//  EstadosSonido estadosSonido;
//  // DECLARO PINES CON VALOR INICIAL --> CAMBIARLOS A 1 CON EL CODIGO DE TATI
//  int sArduino = 1;
//  int B1in = sArduino;
//  int B2in = sArduino;
//  int B3in = sArduino;
//  int B4in = sArduino;
//  int B5in = sArduino;
//  int B6in = sArduino;
//  int B7in = sArduino;
//  int B8in = sArduino;
//  int B9in = sArduino;
//  int B10in = sArduino;
//  int B11in = sArduino;
//  int B12in = sArduino;

//  // CONTADOR DE CONEXIONES EXITOSAS
//  int cantidadTrue = 0;
//  boolean[] conexionesBooleanas = new boolean[7]; // Arreglo para almacenar los estados

//  Conexion () {
//    estadosVisual = new EstadosVisual();
//    estadosSonido = new EstadosSonido();
//  }

//  void conexiones() {
//    //CONTADOR DE VALOR TRUE
//    cantidadTrue = 0; // Reiniciar el contador de estados verdaderos
//    for (int i = 0; i < conexionesBooleanas.length; i++) {
//      // Si el estado es verdadero, aumentar el contador
//      if (conexionesBooleanas[i]) {
//        cantidadTrue++;
//      }
//    }

//    //RECORRIDO DE LA SEÑAL DE ARDUINO
//    if (portStream != null) {
//      //LARGO DEL STRING = CANTIDAD DE CARACTERES (NUM + S + E) MÁS 2, LETRA E = LARGO DEL STRING - 3
//      if (portStream.length() == 16 && portStream.charAt(0) == 'S' && portStream.charAt(13) == 'E' ) { //S000000000000E --> 14 CARACTERES
//        B1in = int(portStream.substring(1, 2)); // ojo1.1
//        B2in = int(portStream.substring(2, 3)); // ojo1.2
//        B3in = int(portStream.substring(3, 4)); // ojo2.1
//        B4in = int(portStream.substring(4, 5)); // ojo2.2
//        B5in = int(portStream.substring(5, 6)); // boca1.1
//        B6in = int(portStream.substring(6, 7)); // boca1.2
//        B7in = int(portStream.substring(7, 8)); // nariz1.1
//        B8in = int(portStream.substring(8, 9)); // nariz1.2
//        B9in = int(portStream.substring(9, 10)); // oido1.1
//        B10in = int(portStream.substring(10, 11)); // oido1.2
//        B11in = int(portStream.substring(11, 12)); // oido2.1
//        B12in = int(portStream.substring(12, 13)); // oido2.2

//        //CONDICIONALES EN PAR PARA VERIFICAR CONEXIÓN EXITOSA
//        if (B1in == 0 && B2in == 0) { // ojo1
//          conexionesBooleanas[1] = true;
//        } else {
//          conexionesBooleanas[1] = false;
//        }

//        if (B3in == 0 && B4in == 0) { // ojo2
//          conexionesBooleanas[2] = true;
//        } else {
//          conexionesBooleanas[2] = false;
//        }

//        if (B5in == 0 && B6in == 0) { // boca
//          conexionesBooleanas[3] = true;
//        } else {
//          conexionesBooleanas[3] = false;
//        }

//        if (B7in == 0 && B8in == 0) { // nariz
//          conexionesBooleanas[4] = true;
//        } else {
//          conexionesBooleanas[4] = false;
//        }

//        if (B9in == 0 && B10in == 0) { // oido1
//          conexionesBooleanas[5] = true;
//        } else {
//          conexionesBooleanas[5] = false;
//        }

//        if (B11in == 0 && B12in == 0) { // oido2
//          conexionesBooleanas[6] = true;
//        } else {
//          conexionesBooleanas[6] = false;
//        }
//      }
//    }
//  }

//  void cambiarEstadoBooleana(int indice, boolean nuevoEstado) {
//    conexionesBooleanas[indice] = nuevoEstado;
//  }
//  void pasoEstado() {

//    if (cantidadTrue == 0) {
//      text ("Estado 0", 355, 495);
    //  estadosVisual.estado0();
    //  estadosSonido.estado0();
    //} else if (cantidadTrue == 1 ) {
    //  text ("Estado 1", 355, 495);
    //  estadosVisual.estado1();
    //  estadosSonido.estado1();
    //} else if (cantidadTrue == 2 ) {
    //  text ("Estado 2", 355, 495);
    //  estadosVisual.estado2();
    //  estadosSonido.estado2();
    //} else if (cantidadTrue == 3 ) {
    //  text ("Estado 3", 355, 495);
    //  estadosVisual.estado3();
    //  estadosSonido.estado3();
    //} else if (cantidadTrue == 4 ) {
    //  text ("Estado 4", 355, 495);
    //  estadosVisual.estado4();
    //  estadosSonido.estado4();
    //} else if (cantidadTrue == 5 ) {
    //  text ("Estado 5", 355, 495);
    //  estadosVisual.estado5();
    //  estadosSonido.estado5();
    //} else if (cantidadTrue == 6 ) {
    //  text ("Estado 6", 355, 495);
    //  estadosVisual.estado6();
    //  estadosSonido.estado6();
//    }
//  }
//}
