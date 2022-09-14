import blobDetection.*;
import fisica.*;
import processing.sound.*;

FWorld mundo;

SoundFile osc, pierdeVida, victoria;
BlobDetection theBlobDetection;

PGraphics dibujos;
PImage fondo;
int sC1, sC2, grosorDibujo, grosorLinea;
String estado;
Boolean caePelota, limpiar;

FPoly poly;
FCircle pelota;

void setup() {
  size (800, 600);
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges(color(255));

  setear();

  dibujos = createGraphics(width, height);
  dibujos.beginDraw();
  dibujos.background(fondo);
  dibujos.endDraw();

  textAlign(CENTER);
  textSize(30);

  objetos();
  agregarPelota();

  theBlobDetection = new BlobDetection(dibujos.width, dibujos.height);
  println(estado == "detectar");
}

void draw() {
  
  if (mousePressed) {
    dibujarLapiz();
    estado = "dibujar";
  }

  image (dibujos, 0, 0);
  contador();

  if (sC1==0) {
    estado = "detectar";
    detectarYLimpiar();
    if (limpiar = true) {
    estado = "jugar";
    }
  }

  if (estado == "jugar") {
    caePelota = true;
    if (caePelota == true) {
      mundo.add(pelota);
    }
  }



  //agregarPelota();

  mundo.step();
  mundo.draw();
}
