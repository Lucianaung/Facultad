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

/////
Boolean detectado;
/////

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
}

void draw() {
  println("estado:"+estado);
  image (dibujos, 0, 0);


  if (estado.equals("DIBUJAR") && mousePressed) {
    dibujar();
  } 
  //else if (estado == "DETECTAR") {
  //  detectar();
  //} 
  else if (estado == "JUGAR" && !pelotaDesactivada) {
    jugar();
    pelotaDesactivada = true;
  } else if (estado == "GANAR") {
    ganar();
  } else if (estado == "PERDER") {
    fill(152,65,235);
    rect(150,165,430,200);
    //perder();
  }
  contador();
  mundo.step();
  mundo.drawDebug();
}

void contador() {
  int ms = millis()/1000;
  fill(0);
  cuentaReg = tiempoLimite - ms;
  if (cuentaReg > 0) {
    text(cuentaReg, 715, 65);
  } else {
    estado = "JUGAR";
    cuentaReg=0;
  }
}
