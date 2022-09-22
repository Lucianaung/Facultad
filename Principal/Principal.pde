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
Boolean perder = false;

int sC1, sC2, grosorDibujo, grosorLinea;

FPoly poly;
FCircle pelota;

void setup() {
  size (800, 600);
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges(color(255));

  setear();

  font = loadFont ("Blokletters-Viltstift-48.vlw");
  textFont(font);
  textAlign(CENTER);
  textSize(30);

  agregarPelota();
}

void draw() {
  println(estado);

  if (estado.equals("dibujar") && mousePressed) {
    dibujarLapiz();
  }

  image (dibujos, 0, 0);
  contador();

  if (estado.equals("dibujar") && sC1==0) {
    estado = "detectar";
  }
  if (estado.equals("detectar")) {
    detectarYLimpiar();
    estado = "jugar";
  }
  if (estado.equals("jugar") && !pelotaDesactivada) {
    mundo.add(pelota);
    pelotaDesactivada = true;
  }
  if (estado.equals("perder")) {
    mundo.remove(pelota);
    mundo.clear();
    setear();
  }



  mundo.step();
  mundo.draw();
}
