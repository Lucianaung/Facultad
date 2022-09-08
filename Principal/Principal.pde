import blobDetection.*;
import fisica.*;
import processing.sound.*;
FWorld mundo;

PGraphics dibujos;
BlobDetection theBlobDetection;
PImage fondo;

int grosorDibujo = 12;
int grosorLinea = 4;
String estado = "dibujar";
int subEstado = 1;
String estado2 = "enPosicion";
FPoly poly;
FCircle pelota;

SoundFile osc, pierdeVida, victoria;
int s;
int seg;
void setup() {
  size (800, 600);
  fondo = loadImage ("fondo.png");

  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges(color(255));

  osc = new SoundFile (this, "oscSonido.mp3");
  pierdeVida = new SoundFile (this, "pierdeVida.mp3");
  victoria = new SoundFile (this, "victoria.mp3");

  s = 5;
  seg = 10;
  textAlign(CENTER);
  textSize(30);

  //DETECCIÓN DE DIBUJOS
  dibujos = createGraphics(width, height);
  dibujos.beginDraw();
  dibujos.background(fondo);
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

  //Objetos objeto26 = new Objetos(70, 14);
  //objeto26.inicializar(476, 345, 31, "flecha3");
  //mundo.add(objeto26);

  //Objetos objeto27 = new Objetos(55, 36);
  //objeto27.inicializar(521, 394, 32, "flecha4");
  //mundo.add(objeto27);

  //Objetos objeto28 = new Objetos(55, 36);
  //objeto28.inicializar(569, 447, 33, "flecha5");
  //mundo.add(objeto28);

  Objetos objeto29 = new Objetos(86, 28);       //PENDULO
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

  pelota = new FCircle(20);           //pelota
  pelota.setPosition(40, 8);
  pelota.setRestitution(0.5);
  pelota.setFill(0);
  pelota.setName("pelota");

  FLine salida = new FLine(10, 40, 120, 85); //linea de salida
  salida.setStatic(true);
  salida.setStrokeWeight(grosorLinea);
  mundo.add(salida);

  //FBox llegada = new FBox(101, 140);
  //llegada.isSensor();
  //llegada.setPosition(width-101/2, height-140/2);
  //llegada.setNoStroke();
  //llegada.setFill(255, 25, 205);
  //llegada.setStatic(true);
  //llegada.setGrabbable(false);
  //llegada.setName("meta");
  //mundo.add(llegada);

  theBlobDetection = new BlobDetection(dibujos.width, dibujos.height);
}

void draw() {
  if (mousePressed) {
    dibujarLapiz();
  }
  image (dibujos, 0, 0);

  if (estado == "dibujar" && s==0) {
    //blur
    if (subEstado == 1) {
      for (int i=0; i<4; i++) {
        dibujos.filter(BLUR, 4);
        subEstado=2;
      }
    }
    if (subEstado == 2) {
      // detectar
      theBlobDetection.setPosDiscrimination(false);
      theBlobDetection.setThreshold(0.60f); //0.38f--> revisar con el pizarrón, es qué tanto gris recibe
      theBlobDetection.computeBlobs(dibujos.pixels);
      subEstado=3;
    }
    if (subEstado == 3) {
      // poly - limpiar - pelota
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
          mundo.add(poly);
          subEstado=4;
        }
      }

      if (subEstado == 4) {
        // limpiar
        dibujos.beginDraw();
        dibujos.background(fondo);
        dibujos.endDraw();
        mundo.add(pelota);
      }
    }
  }

  if (pelota.getX()>width-101 && pelota.getY()>height-140) {
    victoria.play();
    victoria.amp(0.1);
    setup();
    osc.stop();
    pierdeVida.play();
    pierdeVida.amp(0.1);
  } else {
    victoria.stop();
  }

  //CONTADOR
  text("0 " +s, 737, 65);
  fill(0);
  if (frameCount%60==0) {
    s--;
    if (s<=0) {
      s=0;
    }
  }

  //PERDER REINICIAR
  if (s==0) {
    text(seg, 300, 65);
    if (frameCount%60==0) {
      seg--;
      if (seg<=0 && pelota.getX()<width-101 && pelota.getX()>0 && pelota.getY()<height-140 && pelota.getY()>0) {
        setup();
        osc.stop();
        pierdeVida.play();
        pierdeVida.amp(0.1);
      }
    }
  }
  mundo.step();
  mundo.draw();
}

void dibujarLapiz() {
  dibujos.beginDraw();
  dibujos.strokeWeight(grosorDibujo);
  dibujos.line(mouseX, mouseY, pmouseX, pmouseY);
  dibujos.endDraw();
}

void contactStarted(FContact contacto) {
  FBody cuerpo1 = contacto.getBody1();
  FBody cuerpo2 = contacto.getBody2();

  String nombre1 = conseguirNombre(cuerpo1);
  String nombre2 = conseguirNombre(cuerpo2);

  //COLISION CON OSC
  if (nombre1 == "pelota" && nombre2 == "osc") { //CHOQUE CON OSC
    println ("hubo contacto con OSC");
    osc.play();
    osc.amp(0.1);
  } else {
    osc.stop();
  }
  if (nombre2 == "pelota" && nombre1 == "osc") {
    println ("hubo contacto con OSC");
    osc.play();
    osc.amp(0.1);
  } else {
    osc.stop();
  }

  //COLISION CON FANTASMAS
  if (nombre1 == "pelota" && nombre2 == "fantasmitas") { //CHOQUE CON FANTASMAS --> PIERDE VIDAS
    println ("hubo contacto con fantasmitas");
    pierdeVida.play();
    pierdeVida.amp(0.1);
    mundo.remove(poly);
    mundo.remove(pelota);
    s = 5;
  } else {
    pierdeVida.stop();
  }
  if (nombre2 == "pelota" && nombre1 == "fantasmitas") {
    println ("hubo contacto con fantasmitas");
    pierdeVida.play();
    pierdeVida.amp(0.1);
    mundo.remove(poly);
    mundo.remove(pelota);
    s = 5;
  } else {
    pierdeVida.stop();
  }

  //COLISION CON META --> GANAR
  //if (nombre1 == "pelota" && nombre2 == "meta") {
  //  println ("llegó a la meta");
  //  victoria.play();
  //}
  //if (nombre2 == "meta" && nombre1 == "pelota") {
  //  println ("llegó a la meta");
  //  victoria.play();
  //}
}
