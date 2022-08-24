import fisica.*;
FWorld mundo;

int grosorLinea = 4;
PImage fondo;
PImage [] ima = new PImage [15];

FPoly dibujo;
FCircle pelota;
void setup() {
  size (800, 600);
  fondo = loadImage("fondo.png");

  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges(); //setEdges(float topLeftX, float topLeftY, float bottomRightX, float bottomRightY, int color

  for (int i=0; i<ima.length; i++) {
    ima[i]= loadImage("img"+ i +".png");
  }

  //creo los cuerpos y configuro
  FLine salida = new FLine(10, 80, 120, 90); //linea de salida
  salida.setStatic(true);
  salida.setStrokeWeight(grosorLinea);

  FBox caja1 = new FBox (65, 18); //diseño
  caja1.setPosition(50, 110);
  caja1.setStatic(true);
  caja1.attachImage(ima[0]);
  caja1.setGrabbable(false);
  FBox caja2 = new FBox (143, 20); //multimedial 2
  caja2.setPosition(90, 130);
  caja2.setStatic(true);
  caja2.attachImage(ima[1]);
  caja2.setGrabbable(false);

  FLine lineaV = new FLine(57, 310, 58, 540);//grafico lineas
  lineaV.setStatic(true);
  lineaV.setStrokeWeight(grosorLinea);
  FLine lineaH = new FLine(58, 540, 300, 540);
  lineaH.setStatic(true);
  lineaH.setStrokeWeight(grosorLinea);

  FBox caja3 = new FBox (33, 49); //grafico torres
  caja3.setPosition(100, 500);
  caja3.setStatic(true);
  caja3.attachImage(ima[2]);
  caja3.setGrabbable(false);
  FBox caja4 = new FBox (43, 104);
  caja4.setPosition(170, 480);
  caja4.setStatic(true);
  caja4.attachImage(ima[3]);
  caja4.setGrabbable(false);
  FBox caja5 = new FBox (45, 145);
  caja5.setPosition(235, 460);
  caja5.setStatic(true);
  caja5.attachImage(ima[4]);
  caja5.setGrabbable(false);

  FBox ejeP = new FBox (167, 34); // pendulo
  ejeP.setPosition(360, 40);
  ejeP.setStatic(true);
  ejeP.attachImage(ima[5]);
  ejeP.setGrabbable(false);
  FCircle bola = new FCircle (40);
  bola.setPosition(360, 150);
  bola.setStrokeWeight(grosorLinea);
  bola.setDensity(10);
  FDistanceJoint cadena = new FDistanceJoint(ejeP, bola);
  cadena.setLength(150);
  cadena.setStrokeWeight(grosorLinea);
  FBox caja6 = new FBox (124, 33);
  caja6.setPosition(490, 95);
  caja6.setStatic(true);
  caja6.attachImage(ima[6]);
  caja6.setGrabbable(false);

  FBox caja7 = new FBox (107, 80); //a+b
  caja7.setPosition(190, 260);
  caja7.setStatic(true);
  caja7.attachImage(ima[7]);
  caja7.setGrabbable(false);

  FBox caja8 = new FBox (136, 103); //processing
  caja8.setPosition(440, 350);
  caja8.setStatic(true);
  caja8.attachImage(ima[8]);
  caja8.setGrabbable(false);
  FBox caja9 = new FBox (82, 57);
  caja9.setPosition(510, 420);
  caja9.setStatic(true);
  caja9.attachImage(ima[9]);
  caja9.setGrabbable(false);
  FBox caja10 = new FBox (72, 74);
  caja10.setPosition(610, 410);
  caja10.setStatic(true);
  caja10.attachImage(ima[10]);
  caja10.setGrabbable(false);

  FBox caja11 = new FBox (217, 218); //ideas
  caja11.setPosition(650, 160);
  caja11.setStatic(true);
  caja11.attachImage(ima[11]);
  caja11.setGrabbable(false);

  FBox caja12 = new FBox (60, 78); //puerta
  caja12.setPosition(756, 530);
  caja12.setStatic(true);
  caja12.attachImage(ima[12]);
  caja12.setGrabbable(false);

  FBox caja13 = new FBox (22, 149); //tiempo
  caja13.setPosition(25, 480);
  caja13.setStatic(true);
  caja13.attachImage(ima[13]);
  caja13.setGrabbable(false);

  FBox caja14 = new FBox (71, 24); //vidas
  caja14.setPosition(380, 510);
  caja14.setStatic(true);
  caja14.attachImage(ima[14]);
  caja14.setGrabbable(false);
  FCircle vida1 = new FCircle(31);
  vida1.setPosition(320, 470);
  vida1.setStatic(true);
  vida1.setFill(255);
  vida1.setStrokeWeight(grosorLinea);
  vida1.setGrabbable(false);
  FCircle vida2 = new FCircle(31);
  vida2.setPosition(370, 470);
  vida2.setStatic(true);
  vida2.setFill(255);
  vida2.setStrokeWeight(grosorLinea);
  vida2.setGrabbable(false);
  FCircle vida3 = new FCircle(31);
  vida3.setPosition(415, 470);
  vida3.setStatic(true);
  vida3.setFill(255);
  vida3.setStrokeWeight(grosorLinea);
  vida3.setGrabbable(false);

  pelota = new FCircle(20);           //pelota
  pelota.setPosition(30, 0);
  pelota.setRestitution(1);
  pelota.setFill(0);

  //agrego los cuerpos al mundo
  mundo.add(salida);
  mundo.add(caja1);
  mundo.add(caja2);
  mundo.add(lineaV);
  mundo.add(lineaH);
  mundo.add(caja3);
  mundo.add(caja4);
  mundo.add(caja5);
  mundo.add(ejeP);
  mundo.add(bola);
  mundo.add(cadena);
  mundo.add(caja6);
  mundo.add(caja7);
  mundo.add(caja8);
  mundo.add(caja9);
  mundo.add(caja10);
  mundo.add(caja11);
  mundo.add(caja12);
  mundo.add(caja13);
  mundo.add(caja14);
  mundo.add(vida1);
  mundo.add(vida2);
  mundo.add(vida3);


  // //TIENE QUE APARECER CON EL TECLADO
}

void draw() {
  background(255);
  
  mundo.step();
  mundo.draw(); //Debug
  if (dibujo != null) {
    dibujo.draw(this);
  }
  if (keyPressed){
   mundo.add(pelota);
  }
}

void mousePressed() {
  dibujo = new FPoly();
  dibujo.setStroke(grosorLinea);
  dibujo.setStatic(true);
  dibujo.vertex (mouseX, mouseY);
}

void mouseDragged() {
  if (dibujo != null) {
    dibujo.vertex (mouseX, mouseY);
  }
}

void mouseReleased(){
  if (dibujo != null){
  mundo.add(dibujo);
  }
}
