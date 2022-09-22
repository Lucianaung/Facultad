import blobDetection.*;
import fisica.*;
import processing.sound.*;

FWorld mundo;

SoundFile osc, pierdeVida, victoria;
BlobDetection theBlobDetection;

PImage fondo;
PGraphics dibujos;
PFont font;
String estado, paso;

Boolean pelotaDesactivada;
Boolean oscDesactivado;
Boolean fantasmasDesactivado;
Boolean perder = false;

int tiempoLimite, cuentaReg, grosorDibujo, grosorLinea;

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
  textSize(21);

  agregarPelota();
}

void draw() {
  println("estado:"+estado);
  println("pelota"+pelota.getDensity(),pelota.getForceX());
  
  //if (estado.equals("inicio")){
  //pantallaInicio();
  //}
  
  if (estado.equals("dibujar") && mousePressed) {
    dibujarLapiz();
  }

  image (dibujos, 0, 0);
  contador();
  
  if (estado.equals("detectar")) {
    detectarYLimpiar();
  }
  if (estado.equals("jugar") && !pelotaDesactivada) {
    mundo.add(pelota);
    pelotaDesactivada = true;
  }
  if (estado.equals("perder")) {
    mundo.clear();
    setear();
  }



  mundo.step();
  mundo.draw();
}
