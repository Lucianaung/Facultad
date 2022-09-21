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
Boolean pelotaDesactivada;
Boolean sonidoDesactivado;
Boolean perder = false;
Boolean caePelota, limpiar;

FPoly poly;
FCircle pelota;

void setup() {
  size (800, 600);
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges(color(255));

  setear();

  textAlign(CENTER);
  textSize(30);

  objetos();
  agregarPelota();

  println(estado.equals("perder"));
}

void draw() {

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
    setear();
  }



  mundo.step();
  mundo.draw();
}
