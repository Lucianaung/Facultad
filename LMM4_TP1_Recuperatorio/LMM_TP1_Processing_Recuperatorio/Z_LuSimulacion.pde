// PRUEBAS CON MI ARDUINO Y PROTO DE 6 BOTONES ---------------------SIMULACIÓN--------------------------
class Conexion {
  EstadosVisual estadosVisual;
  EstadosSonido estadosSonido;

  // DECLARO PINES CON VALOR INICIAL --> CAMBIARLOS A 1 CON EL CODIGO DE TATI
  int sArduino = 0;
  int B1in = sArduino;
  int B2in = sArduino;
  int B3in = sArduino;
  int B4in = sArduino;
  int B5in = sArduino;
  int B6in = sArduino;

  // CONTADOR DE CONEXIONES EXITOSAS
  int cantidadTrue = 0;
  boolean[] conexionesBooleanas = new boolean[7]; // Arreglo para almacenar los estados


  Conexion () {
    estadosVisual = new EstadosVisual();
    estadosSonido = new EstadosSonido();
  }

  void conexiones() {
    textSize(20);

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
        B1in = int(portStream.substring(1, 2));
        B2in = int(portStream.substring(2, 3));
        B3in = int(portStream.substring(3, 4));
        B4in = int(portStream.substring(4, 5));
        B5in = int(portStream.substring(5, 6));
        B6in = int(portStream.substring(6, 7));

        //CONDICIONALES EN PAR PARA VERIFICAR CONEXIÓN EXITOSA
        if (B1in == 1 ) {
          conexionesBooleanas[1] = true;
        } else {
          conexionesBooleanas[1] = false;
        }

        if (B2in == 1 ) {
          conexionesBooleanas[2] = true;
        } else {
          conexionesBooleanas[2] = false;
        }

        if (B3in == 1 ) {
          conexionesBooleanas[3] = true;
        } else {
          conexionesBooleanas[3] = false;
        }

        if (B4in == 1 ) {
          conexionesBooleanas[4] = true;
        } else {
          conexionesBooleanas[4] = false;
        }

        if (B5in == 1 ) {
          conexionesBooleanas[5] = true;
        } else {
          conexionesBooleanas[5] = false;
        }

        if (B6in == 1 ) {
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
     // Limpiar los PGraphics con fondo transparente
  cRostro.beginDraw();
  cRostro.clear(); // Limpia con fondo transparente
  cRostro.endDraw();

  cTextura.beginDraw();
  cTextura.clear(); // Limpia con fondo transparente
  cTextura.endDraw();

  cPiel.beginDraw();
  cPiel.clear(); // Limpia con fondo transparente
  cPiel.endDraw();

    if (cantidadTrue == 0) {
      text ("Estado 0", 355, 495);
      estadosVisual.estado0();

      estadosSonido.estado0();
    } else if (cantidadTrue == 1 ) {
      text ("Estado 1", 355, 495);
      estadosVisual.estado1();
      estadosSonido.estado1();
    } else if (cantidadTrue == 2 ) {
      text ("Estado 2", 355, 495);
      estadosVisual.estado2();
      estadosSonido.estado2();
    } else if (cantidadTrue == 3 ) {
      text ("Estado 3", 355, 495);
      estadosVisual.estado3();
      estadosSonido.estado3();
    } else if (cantidadTrue == 4 ) {
      text ("Estado 4", 355, 495);
      estadosVisual.estado4();
      estadosSonido.estado4();
    } else if (cantidadTrue == 5 ) {
      text ("Estado 5", 355, 495);
      estadosVisual.estado5();
      estadosSonido.estado5();
    } else if (cantidadTrue == 6 ) {
      text ("Estado 6", 355, 495);
      estadosVisual.estado6();
      estadosSonido.estado6();
    }
  }
}
