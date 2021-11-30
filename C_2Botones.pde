class BotonesAG {
  String opcion;
  PImage continuar;
  int px, py, ancho, alto, partida, destino, tamTxt;
  BotonesAG(int tamTxt_, int b_px, int b_py, int b_ancho, int b_alto) {
    tamTxt = tamTxt_;
    px = b_px;
    py = b_py;
    ancho = b_ancho;
    alto = b_alto;

    continuar = loadImage ("sig.png");
  }
  void d_BTexto(int partida_, int destino_, String opcion_) { //----------------> botón de opciones

    partida = partida_;
    destino = destino_;
    opcion = opcion_;
    strokeWeight(2);
    stroke(255);
    fill(164, 74, 34);
    rectMode(CENTER);
    rect (px, py, ancho, alto, 2);
    fill(255);
    textSize(tamTxt); //------------------- 30 grande, 20 chico
    textAlign(CENTER, CENTER);
    text(opcion, px, py);
  }

  void d_Continuar(int partida_, int destino_) { //-------- boton solo con icono
    partida = partida_;
    destino = destino_;
    imageMode(CENTER);
    image(continuar, px, py, ancho, alto);
  }

  boolean botonClickear_AG(int b_px, int b_py, int b_ancho, int b_alto) {
    px = b_px;
    py = b_py;
    ancho = b_ancho;
    alto = b_alto;
    boolean clickAG = mouseX>px-ancho/2 && mouseX<px+ancho/2 && mouseY>py-alto/2 && mouseY<py+alto/2 == true;
    return clickAG;
  }
}
