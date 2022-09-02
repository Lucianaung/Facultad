import blobDetection.*;
import fisica.*;
FWorld mundo;

PGraphics dibujos;
BlobDetection theBlobDetection;
PImage fondo;

int grosorDibujo = 12;
int grosorLinea = 4;

FPoly poly;

void setup() {
  size (800, 600);
  fondo = loadImage ("fondo.png");
  background(255);

  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges(color(255));

  //DETECCIÓN DE DIBUJOS
  dibujos = createGraphics(width, height);
  dibujos.beginDraw();
  dibujos.background(255);
  dibujos.endDraw();

  Objetos objeto1 = new Objetos(103, 21);
  objeto1.inicializar(70, 90, 0, "tecno2");
  mundo.add(objeto1);

  Objetos objeto2 = new Objetos(49, 14);
  objeto2.inicializar(50, 120, 1, "final");
  mundo.add(objeto2);

  Objetos objeto3 = new Objetos(124, 32);
  objeto3.inicializar(100, 160, 2, "processing");
  mundo.add(objeto3);

  Objetos objeto4 = new Objetos(80, 39);
  objeto4.inicializar(100, 235, 3, "fisica");
  mundo.add(objeto4);

  Objetos objeto5 = new Objetos(27, 40);
  objeto5.inicializar(40, 200, 5, "flecha1");
  mundo.add(objeto5);

  Objetos objeto6 = new Objetos(60, 62);
  objeto6.inicializar(188, 234, 4, "iman");
  mundo.add(objeto6);

  Objetos objeto7 = new Objetos(174, 69);
  objeto7.inicializar(195, 330, 6, "osc");
  mundo.add(objeto7);

  Objetos objeto8 = new Objetos(52, 35);
  objeto8.inicializar(341, 297, 7, "notasMusicales");
  mundo.add(objeto8);

  FLine lineaV = new FLine(67, 380, 77, 540);//grafico lineas
  lineaV.setStatic(true);
  lineaV.setStrokeWeight(grosorLinea);
  mundo.add(lineaV);
  FLine lineaH = new FLine(77, 540, 241, 544);
  lineaH.setStatic(true);
  lineaH.setStrokeWeight(grosorLinea);
  mundo.add(lineaH);
  Objetos objeto9 = new Objetos(18, 131); //vidas
  objeto9.inicializar(102, 472, 8, "vida1");
  mundo.add(objeto9);
  Objetos objeto10 = new Objetos(15, 109);
  objeto10.inicializar(133, 480, 9, "vida2");
  mundo.add(objeto10);
  Objetos objeto11 = new Objetos(16, 86);
  objeto11.inicializar(164, 495, 10, "vida3");
  mundo.add(objeto11);
  Objetos objeto12 = new Objetos(15, 66);
  objeto12.inicializar(192, 505, 11, "vida4");
  mundo.add(objeto12);
  Objetos objeto13 = new Objetos(11, 44);
  objeto13.inicializar(221, 518, 12, "vida5");
  mundo.add(objeto13);

  Objetos objeto14 = new Objetos(115, 22);
  objeto14.inicializar(160, 565, 13, "vidas");
  mundo.add(objeto14);

  Objetos objeto15 = new Objetos(22, 36);
  objeto15.inicializar(248, 550, 14, "flecha2");
  mundo.add(objeto15);

  Objetos objeto16 = new Objetos(32, 72);
  objeto16.inicializar(322, 419, 15, "fantasmitas");
  mundo.add(objeto16);

  Objetos objeto17 = new Objetos(124, 46);
  objeto17.inicializar(425, 436, 16, "pacman");
  mundo.add(objeto17);

  Objetos objeto18 = new Objetos(72, 59);
  objeto18.inicializar(468, 279, 17, "tateti1");
  mundo.add(objeto18);

  Objetos objeto19 = new Objetos(40, 75);
  objeto19.inicializar(590, 253, 19, "lamparita");
  mundo.add(objeto19);

  Objetos objeto20 = new Objetos(99, 59);
  objeto20.inicializar(606, 369, 20, "ideas");
  mundo.add(objeto20);

  Objetos objeto21 = new Objetos(140, 49);
  objeto21.inicializar(707, 358, 21, "mecanicas");
  objeto21.setRotation(-5.899);
  mundo.add(objeto21);

  Objetos objeto22 = new Objetos(141, 91);
  objeto22.inicializar(704, 264, 22, "estética");
  mundo.add(objeto22);

  Objetos objeto23 = new Objetos(110, 63);
  objeto23.inicializar(691, 128, 23, "division");
  mundo.add(objeto23);

  Objetos objeto24 = new Objetos(101, 48);
  objeto24.inicializar(702, 38, 24, "tiempo");
  mundo.add(objeto24);

  Objetos objeto25 = new Objetos(159, 96);
  objeto25.inicializar(578, 525, 25, "bossF");
  mundo.add(objeto25);

  Objetos objeto26 = new Objetos(70, 14);
  objeto26.inicializar(476, 345, 31, "flecha3");
  mundo.add(objeto26);

  Objetos objeto27 = new Objetos(55, 36);
  objeto27.inicializar(521, 394, 32, "flecha4");
  mundo.add(objeto27);

  Objetos objeto28 = new Objetos(55, 36);
  objeto28.inicializar(569, 447, 33, "flecha5");
  mundo.add(objeto28);

  Objetos objeto29 = new Objetos(86, 28); //PENDULO
  objeto29.inicializar(568, 42, 34, "pendulo");
  mundo.add(objeto29);
  Objetos objeto30 = new Objetos(142, 26);
  objeto30.inicializar(408, 32, 35, "soporteP");
  mundo.add(objeto30);
  FCircle bola = new FCircle(30);
  bola.setPosition(408, 150);
  bola.setStrokeWeight(grosorLinea);
  bola.setDensity(6);
  mundo.add(bola);
  FDistanceJoint cadena = new FDistanceJoint(objeto30, bola);
  cadena.setLength(150);
  cadena.setStrokeWeight(grosorLinea);
  mundo.add(cadena);

  theBlobDetection = new BlobDetection(dibujos.width, dibujos.height);
}

void draw() {
  if (mousePressed) {
    dibujarLapiz();
  }
  image (dibujos, 0, 0);
  mundo.step();
  mundo.draw();
}

void dibujarLapiz() {
  dibujos.beginDraw();
  dibujos.strokeWeight(grosorDibujo);
  dibujos.line(mouseX, mouseY, pmouseX, pmouseY);
  dibujos.endDraw();
}

void keyPressed() {
  if (key=='b') {
    for (int i=0; i<4; i++) {
      dibujos.filter(BLUR, 4);
    }
  } else if (key=='d') {
    theBlobDetection.setPosDiscrimination(false);
    theBlobDetection.setThreshold(0.60f); //0.38f--> revisar con el pizarrón, es qué tanto gris recibe
    theBlobDetection.computeBlobs(dibujos.pixels);
  } else if (key=='l') {
    dibujos.beginDraw();
    dibujos.background(255);
    dibujos.endDraw();
    //mundo.clear(); //--> hacer que de alguna forma se borren los poly hechos para volver a intentar
  } else if (key=='p') {
    Blob b;
    EdgeVertex eA;
    for (int n = 0; n < theBlobDetection.getBlobNb(); n++) {
      poly = new FPoly(); //FPoly
      poly.setStatic(true);
      poly.setGrabbable(false);
      b = theBlobDetection.getBlob(n);
      if (b!=null) {
        for (int m = 0; m < b.getEdgeNb(); m += 20) { //--> simplifica la forma
          eA = b.getEdgeVertexA(m);
          if (eA !=null ) {
            poly.vertex(eA.x*width, eA.y*height);
          }
        }
      }
      mundo.add(poly);
    }
  } else if (key=='v') {
    //mundo.remove(poly);
    mundo.clear();
  } else if (key == BACKSPACE) {
    //mundo.add(pelota);
  }
}
