class Objetos extends FBox {
  int numeroImg;
  String nombre;
  PImage [] ima = new PImage [37];
  Objetos(float w_, float h_) {

    super (w_, h_);

    for (int i=0; i<ima.length; i++) {
      ima[i]= loadImage("img"+ i +".png");
    }
  }

  void inicializar (float x_, float y_, int numeroImg_, String nombre_) {
    nombre = nombre_;
    numeroImg = numeroImg_;
    setPosition(x_, y_);
    attachImage(ima[numeroImg]);
    setName(nombre);
    setStatic(true);
    setGrabbable(false);
  }
}

void objetos() {

  Objetos objeto1 = new Objetos(90, 15);
  objeto1.inicializar(70, 90, 0, "tecno2");
  mundo.add(objeto1);

  Objetos objeto2 = new Objetos(49, 14);
  objeto2.inicializar(50, 120, 1, "final");
  mundo.add(objeto2);

  Objetos objeto3 = new Objetos(124, 32);
  objeto3.inicializar(100, 160, 2, "processing");
  mundo.add(objeto3);

  Objetos objeto4 = new Objetos(60, 28);
  objeto4.inicializar(100, 235, 3, "fisica");
  mundo.add(objeto4);

  Objetos objeto5 = new Objetos(27, 40);
  objeto5.inicializar(40, 200, 5, "flecha1");
  mundo.add(objeto5);

  Objetos objeto6 = new Objetos(50, 50);
  objeto6.inicializar(188, 234, 4, "iman");
  mundo.add(objeto6);

  Objetos objeto7 = new Objetos(160, 48);
  objeto7.inicializar(195, 330, 6, "osc");
  mundo.add(objeto7);

  Objetos objeto8 = new Objetos(40, 25);
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

  //Objetos objeto14 = new Objetos(115, 22);
  //objeto14.inicializar(160, 565, 13, "vidas");
  //mundo.add(objeto14);

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

  Objetos objeto29 = new Objetos(86, 28);//PENDULO  
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

  FLine salida = new FLine(10, 40, 120, 85); //linea de salida
  salida.setStatic(true);
  salida.setStrokeWeight(grosorLinea);
  mundo.add(salida);
}
