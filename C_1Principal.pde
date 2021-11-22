class PrincipalAG {
  PFont tipog;
  int pantalla, text;
  PrincipalJuego principaljg;
  FondosAG fondosag;
  Textos textos;
  BotonesAG botonesG_top, botonesG_bot, botonseguir, botonIzq, botonDer, botonVolver;

  PrincipalAG() {
    //tipog = loadFont ("AgencyFB-Bold-50.vlw");
    //textFont(tipog);

    principaljg = new PrincipalJuego();
    fondosag = new FondosAG();
    textos = new Textos();
    botonesG_top = new BotonesAG(30, 220, 320, 150, 40); //(int b_px, int b_py, int b_ancho, int b_alto)
    botonesG_bot = new BotonesAG(30, 220, 380, 150, 40);
    botonIzq = new BotonesAG(18, 175, height-75, 250, 50);
    botonDer = new BotonesAG(18, width-175, height-75, 250, 50);
    botonVolver = new BotonesAG(30, width/2, height-160, 150, 40);
    botonseguir = new  BotonesAG(0, width/2, height-75, 75, 75);

    pantalla = 0;
    text = 0;
    println(pantalla);
  }

  void dibujarPrincipalAG() {
    fondosag.dibujarFondosAG(pantalla);//int numeroFondo_
    println(pantalla);

    if (pantalla == 0) { //incio
      textAlign(LEFT, CENTER);
      textSize(64);
      text("LOS PUEBLOS\nSILENCIOSOS", 80, 200);
      botonesG_top.d_BTexto(0, 1, "INICIO"); //(tamLetra, partida_,  destino_,  opcion_)
      botonesG_bot.d_BTexto(0, 23, "CRÉDITOS");
    }

    if (pantalla == 1) {
      textos.dibujarTextos(text);
      botonseguir.d_Continuar(1, 2);
    }
    if (pantalla == 2) {
      textos.dibujarTextos(1);
      botonseguir.d_Continuar(2, 3);
    }
    if (pantalla == 3) {
      textos.dibujarTextos(2);
      botonIzq.d_BTexto(3, 4, "Atiende");
      botonDer.d_BTexto(3, 17, "No atiende");
    }
    if (pantalla == 4) {
      textos.dibujarTextos(3);
      botonseguir.d_Continuar(4, 5);
    }
    if (pantalla == 5) {
      textos.dibujarTextos(4);
      botonseguir.d_Continuar(5, 6);
    }
    if (pantalla == 6) {
      textos.dibujarTextos(5);
      botonIzq.d_BTexto(6, 7, "Con la esperanza de una nueva\nllamada, espera...");
      botonDer.d_BTexto(6, 8, "Walter idea un plan y comienza\na llamar a todos los pueblos");
    }
    if (pantalla == 7) {
      textos.dibujarTextos(6);
      botonseguir.d_Continuar(7, 16);
    }

    if (pantalla == 8) {
      textos.dibujarTextos(7);
      botonIzq.d_BTexto(8, 10, "Walter decide esperar a que\nle devuelvan la llamada");
      botonDer.d_BTexto(8, 9, "Se dirige a Nueva Texas\nen busca de Genevive");
    }
    if (pantalla == 9) {
      textos.dibujarTextos(8);
      botonseguir.d_Continuar(9, 24); //--------------INSERCIÓN DEL JUEGO - pantalla 24
    }
    if (pantalla == 10) {
      textos.dibujarTextos(9);
      botonIzq.d_BTexto(10, 11, "Queda maravillado");
      botonDer.d_BTexto(10, 14, "Descubre que no era la mujer que se\nhabia imaginado");
    }
    if (pantalla == 11) {
      textos.dibujarTextos(10);
      botonseguir.d_Continuar(11, 12);
    }
    if (pantalla == 12) {
      textos.dibujarTextos(11);
      botonseguir.d_Continuar(12, 13);
    }
    if (pantalla == 13) {
      textos.dibujarTextos(12);
      botonseguir.d_Continuar(13, 23);
    }

    if (pantalla == 14) {
      textos.dibujarTextos(13);
      botonseguir.d_Continuar(14, 15);
    }
    if (pantalla == 15) {
      textos.dibujarTextos(14);
      botonseguir.d_Continuar(15, 16);
    }
    if (pantalla == 16) {
      textos.dibujarTextos(15);
      botonseguir.d_Continuar(16, 23);
    }
    if (pantalla == 17) {
      textos.dibujarTextos(16);
      botonseguir.d_Continuar(17, 18);
    }
    if (pantalla == 18) {
      textos.dibujarTextos(17);
      botonseguir.d_Continuar(18, 19);
    }
    if (pantalla == 19) {
      textos.dibujarTextos(18);
      botonIzq.d_BTexto(19, 20, "Se fija qué o quién es");
      botonDer.d_BTexto(19, 21, "Ignora el sonido");
    }
    if (pantalla == 20) {
      textos.dibujarTextos(19);
      botonseguir.d_Continuar(20, 21);
    }
    if (pantalla == 21) {
      textos.dibujarTextos(20);
      botonseguir.d_Continuar(21, 22);
    }
    if (pantalla == 22) {
      textos.dibujarTextos(21);
      botonseguir.d_Continuar(22, 23);
    }
    if (pantalla == 23) {
      textos.d_creditos();
      botonVolver.d_BTexto(23, 0, "VOLVER");
    }
    if (pantalla == 24) { //---------------------- JUEGO
      principaljg.dibujarP();
    }
  }

  void detec_BotonesAG() {
    if (botonesG_top.botonClickear_AG(220, 320, 150, 40) && pantalla ==botonesG_top.partida) {
      pantalla =botonesG_top.destino;
    }
    if (botonesG_bot.botonClickear_AG(220, 380, 150, 40) && pantalla ==botonesG_bot.partida) {
      pantalla =botonesG_bot.destino;
    }
    if (botonseguir.botonClickear_AG(width/2, height-75, 75, 75) && pantalla ==botonseguir.partida) {
      pantalla = botonseguir.destino;
    }
    if (botonIzq.botonClickear_AG(175, height-75, 250, 50) && pantalla ==botonIzq.partida) {
      pantalla = botonIzq.destino;
    }
    if (botonDer.botonClickear_AG(width-175, height-75, 250, 50) && pantalla ==botonDer.partida) {
      pantalla = botonDer.destino;
    }
    if (botonVolver.botonClickear_AG(width/2, height-160, 150, 40) && pantalla ==botonVolver.partida) {
      pantalla = botonVolver.destino;
    }
    principaljg.detec_BotonesJU();
  }
}
