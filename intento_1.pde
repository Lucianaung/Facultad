import blobDetection.*;
import fisica.*;
import processing.sound.*;
FWorld mundo;
SoundFile osc, pierdeVida, victoria;
BlobDetection theBlobDetection;
PImage fondo;
PGraphics dibujos;
PFont font;
String estado;
Boolean pelotaDesactivada;
Boolean oscDesactivado;
Boolean fantasmasDesactivado;
int tiempoLimite, cuentaReg, grosorDibujo, grosorLinea;
int paso;
FPoly poly;
FCircle pelota;

int cuentaReg2;
void setup() {
  size (800, 600);
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges(color(255));
  setear();
  font = loadFont ("Blokletters-Viltstift-48.vlw");
  textFont(font);
  textAlign(CENTER);
  textSize(21);

  pelota = new FCircle(20);
  pelota.setPosition(40, 8);
  pelota.setRestitution(0.5);
  pelota.setAllowSleeping(true);
  pelota.setFill(0);
  pelota.setName("pelota");
}

void draw() {
  println("estado:"+estado);
  println(pelota.isSleeping());
  image (dibujos, 0, 0);

  if (estado.equals("DIBUJAR") && mousePressed) {
    dibujar();
  } else if (estado == "JUGAR" && !pelotaDesactivada) {
    jugar();
  }
  else if (pelota.isSleeping()) {
    estado = "PERDER";
  }
  
  if (estado == "GANAR") {
    ganar();
  }
  if (estado == "PERDER") {
    perder();
  }

  contador();
  mundo.step();
  mundo.draw();
}

void contador() {
  int ms = millis()/1000;
  fill(0);
  cuentaReg = tiempoLimite - ms;
  if (cuentaReg > 0) {
    text(cuentaReg, 715, 65);
  } else {
    estado = "JUGAR";
    cuentaReg = 1;
  }
}
