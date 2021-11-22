class Botones{
  String opcion;
  PImage reiniciar;
  int px, py, ancho, alto, partida, destino;
  Botones(int b_px, int b_py, int b_ancho, int b_alto){
    px = b_px;
    py = b_py;
    ancho = b_ancho;
    alto = b_alto;

    reiniciar = loadImage("obj2.png");
}
  void dibujarBopciones(int partida_, int destino_, String opcion_){ /*----------------> botón de opciones personalizable*/
     partida = partida_;
     destino = destino_;
     opcion = opcion_;
     stroke(255);
     fill(164,74,34);
     rectMode(CENTER);
     rect (px,py,ancho,alto,2);
     fill(255); 
     textFont (tipog);
     textSize(31); 
     textAlign(CENTER, CENTER);
     text(opcion,px,py);
}
  void dibujarBreiniciar(int partida_, int destino_){ /*------------------> botón de reiniciar*/
     partida = partida_;
     destino = destino_;
     fill(150);
     noStroke();
     ellipseMode(CENTER);
     ellipse(px, py, ancho,alto);
     imageMode(CENTER);
     image (reiniciar,px,py, ancho/2,alto/2);
}

  void zonaObjeto(int partida_, int destino_){ /*------------------> zona del objeto escondido*/
     partida = partida_;
     destino = destino_;
     fill(255,0,0,0);
     noStroke();
     ellipseMode(CENTER);
     ellipse(px,py,ancho,alto);
}

  boolean botonClickear(int b_px, int b_py, int b_ancho, int b_alto){
    px = b_px;
    py = b_py;
    ancho = b_ancho;
    alto = b_alto;
    boolean click = mouseX>px-ancho/2 && mouseX<px+ancho/2 && mouseY>py-alto/2 && mouseY<py+alto/2 == true; //mouseX>px && mouseX<py+ancho && mouseY>py && mouseY<py+alto
    return click;   
    
  }
}
