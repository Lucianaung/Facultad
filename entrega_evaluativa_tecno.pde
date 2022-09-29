import blobDetection.*;
import fisica.*;
import processing.sound.*;
FWorld mundo;
SoundFile trazo, error, caer, ganar, alarma;
BlobDetection theBlobDetection;
PImage fondo;
PGraphics dibujos;
PFont font;
String estado;
Boolean pelotaDesactivada;
Boolean oscDesactivado;
Boolean fantasmasDesactivado;
Boolean alarmaDesactivada;
Boolean perder;
int tiempoLimite, cuentaReg, grosorDibujo, grosorLinea;
int paso;
FPoly poly;
FCircle pelota;
FBox meta;

void setup() {
  size (1000, 650);
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges(color(255));
  setear();
  font = loadFont ("Blokletters-Viltstift-48.vlw");
  textFont(font);
  textAlign(CENTER);
  textSize(21);
}

void draw() {
  println("estado:"+estado);
  println(pelota.isSleeping());
  image (dibujos, 0, 0);
  contador();
  if (estado.equals("DIBUJAR")) {
    dibujar();
  } else if (estado == "JUGAR" && !pelotaDesactivada) {
    jugar();
   caer.play(1,0.3);
  }
  //
  else if (pelota.isSleeping()) {
    estado = "PERDER";
  } else  if (pelota.isTouchingBody(meta)) {
    estado="GANAR";
  } else if (perder) {
    estado = "PERDER";
  }
  //
  if (estado == "GANAR") {
    ganar();
  }
  if (estado == "PERDER") {
    perder();
  }

  mundo.step();
  mundo.draw();
}

void contador() {
  int ms = millis()/1000;
  fill(0);
  cuentaReg = tiempoLimite - ms;
  if (cuentaReg > 0) {
    text(cuentaReg, 895, 90);
  } else {
    estado = "JUGAR";
  }
  if (cuentaReg <= 5 && !alarmaDesactivada){
  alarma.play(1,0.1);
  alarmaDesactivada=true;
  }
}
