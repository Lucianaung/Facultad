class PrincipalJuego {
  Fondos fondos;
  Inicio inicio;
  Tiempo tiempo;
  Botones boton, botonEsp, reiniciar, obj1, obj2, obj3;
  Oscuridad oscuridad;
  int J_pantalla;
  PrincipalJuego () {
    fondos = new Fondos();
    inicio = new Inicio();
    obj1 = new Botones (width-25, height/2-25, 150, 200);
    obj2 = new Botones (140, 45, 50, 90);
    obj3 = new Botones (535, 240, 30, 45);
    reiniciar = new Botones(width/2, height/2+150, 100, 100); //int b_px, int b_py, int b_ancho, int b_alto
    boton = new Botones (width/2, 450, 250, 50);
    botonEsp = new Botones (width/2, 450, 400, 80);
    tiempo = new Tiempo(10);
    oscuridad = new Oscuridad();
    J_pantalla=0;
    println(J_pantalla);
    
  }

  void dibujarP() {
    fondos.back(J_pantalla);
    if (J_pantalla == 0) { //incio
      inicio.d_inicio();
      boton.dibujarBopciones(0, 1, "Iniciar"); //(int partida_, int destino_, String opcion_)
    }
    if (J_pantalla == 1) { //nivel 1 
      oscuridad.dibujarOscu();
      obj1.zonaObjeto(1, 7); //GANAR

      tiempo.dibujarTiempo(); //PERDER
      if (tiempo.segundos <= 0 && J_pantalla == 1) {
        tiempo.segundos = 10;
        J_pantalla = 4;
        perder.play();
        perder.amp(0.1);
      } else {
        perder.stop();
      }
    }
    if (J_pantalla == 2) { //nivel 2
      oscuridad.dibujarOscu();
      obj2.zonaObjeto(2, 8); //GANAR

      tiempo.dibujarTiempo(); //PERDER
      if (tiempo.segundos <= 0 && J_pantalla == 2) {
        tiempo.segundos = 10;
        J_pantalla = 5;
        perder.play();
        perder.amp(0.1);
      } else {
        perder.stop();
      }
    }
    if (J_pantalla == 3) { // nivel 3
      oscuridad.dibujarOscu();
      obj3.zonaObjeto(3, 9); //GANAR

      tiempo.dibujarTiempo(); //PERDER
      if (tiempo.segundos <= 0 && J_pantalla == 3) {
        tiempo.segundos = 10;
        J_pantalla = 6;
        perder.play();
        perder.amp(0.1);
      } else {
        perder.stop();
      }
    }
    if (J_pantalla == 4) { // perder 1
      reiniciar.dibujarBreiniciar(4, 1);
    } 
    if (J_pantalla == 5) { // perder 2
      reiniciar.dibujarBreiniciar(5, 2);
    }
    if (J_pantalla == 6) { // perder 3
      reiniciar.dibujarBreiniciar(6, 3);
    }
    if (J_pantalla == 7) { // ganar 1
      boton.dibujarBopciones(7, 2, "Siguiente nivel");
      tiempo.segundos = 10;
    }
    if (J_pantalla == 8) { // ganar 2
      boton.dibujarBopciones(8, 3, "Siguiente nivel");
      tiempo.segundos = 10;
    }
    if (J_pantalla == 9) { // ganar 3 
    }
  }

  void detec_BotonesJU() {
    if (obj1.botonClickear_JU(width-25, height/2-25, 150, 200) && J_pantalla == obj1.partida) {
      J_pantalla = obj1.destino;
      ganar.play();
      ganar.amp(0.2);
    }
    if (obj2.botonClickear_JU(140, 45, 50, 90) && J_pantalla == obj2.partida) {
      J_pantalla = obj2.destino;
      ganar.play();
      ganar.amp(0.2);
    }
    if (obj3.botonClickear_JU(535, 240, 30, 45) && J_pantalla == obj3.partida) {
      J_pantalla = obj3.destino;
       ganar.play();
      ganar.amp(0.2);
    }
    if (boton.botonClickear_JU(width/2, 450, 250, 50) && J_pantalla == boton.partida) {
      J_pantalla = boton.destino;
    }
    if (reiniciar.botonClickear_JU(width/2, height/2+150, 100, 100) && J_pantalla == reiniciar.partida) {
      J_pantalla = reiniciar.destino;
    }
    if (botonEsp.botonClickear_JU(width/2, 450, 400, 80) && J_pantalla == botonEsp.partida) {
      J_pantalla = botonEsp.destino;
    }
  }
}
