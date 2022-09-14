String conseguirNombre(FBody cuerpo) {
  String nombre = "vacio";

  if (cuerpo != null)
  {
    nombre = cuerpo.getName();

    if (nombre == null)
    {
      nombre = "nada";
    }
  }
  return nombre;
}

void dibujarLapiz() {
  dibujos.beginDraw();
  dibujos.strokeWeight(grosorDibujo);
  dibujos.line(mouseX, mouseY, pmouseX, pmouseY);
  dibujos.endDraw();
}

void setear() {
  osc = new SoundFile (this, "oscSonido.mp3");
  pierdeVida = new SoundFile (this, "pierdeVida.mp3");
  victoria = new SoundFile (this, "victoria.mp3");

  fondo = loadImage("fondo.png");
  sC1 = 5;
  sC2 = 10;
  grosorDibujo = 12;
  grosorLinea = 4;
  estado = "inicio";
  caePelota = false;
  limpiar = false;
}

void agregarPelota() {

  for (int i = 0; i<1; i++) {
    pelota = new FCircle(20); //pelota
    pelota.setPosition(40, 8);
    pelota.setRestitution(0.5);
    pelota.setFill(0);
    pelota.setName("pelota");

    //  if (caePelota = true) {
    //  mundo.add(pelota);
    //}
  }
}

void detectarYLimpiar() {
  //BLUR
  for (int i=0; i<4; i++) {
    dibujos.filter(BLUR, 4);
  }
  //DETECTAR
  theBlobDetection.setPosDiscrimination(false);
  theBlobDetection.setThreshold(0.60f); //0.38f--> revisar con el pizarrón, es qué tanto gris recibe
  theBlobDetection.computeBlobs(dibujos.pixels);
  //POLY
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
    }
  }
  //LIMPIAR
  //limpiar = true;
  //if (limpiar == true) {
  //  dibujos.beginDraw();
  //  dibujos.background(fondo);
  //  dibujos.endDraw();
  //}
}

void contador() {
  text(sC1, 715, 65);
  fill(0);
  if (frameCount % 60 == 0) {
    sC1--;
    if (sC1<=0) {
      sC1=0;
    }
  }
}
