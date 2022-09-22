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

void setear() {
  osc = new SoundFile (this, "oscSonido.mp3");
  pierdeVida = new SoundFile (this, "pierdeVida.mp3");
  victoria = new SoundFile (this, "victoria.mp3");

  fondo = loadImage("fondo.png");

  dibujos = createGraphics(width, height);
  dibujos.beginDraw();
  dibujos.background(fondo);
  dibujos.endDraw();

  tiempoLimite = 5;
  grosorDibujo = 12;
  grosorLinea = 4;
  estado = "dibujar";
  paso = "paso1";
  pelotaDesactivada = false;
  oscDesactivado = false;
  fantasmasDesactivado = false;

  objetos();

  theBlobDetection = new BlobDetection(dibujos.width, dibujos.height);
}

void dibujarLapiz() {
  dibujos.beginDraw();
  dibujos.strokeWeight(grosorDibujo);
  dibujos.line(mouseX, mouseY, pmouseX, pmouseY);
  dibujos.endDraw();
}

void contador() {
  int ms = millis()/1000;
  println(cuentaReg);
  fill(0);
  cuentaReg = tiempoLimite - ms;
  if (cuentaReg > 0) {
    text(cuentaReg, 715, 65);
  } else {
    estado = "detectar";
    cuentaReg=0;
  }
}

void agregarPelota() {
  pelota = new FCircle(20);
  pelota.setPosition(40, 8);
  pelota.setRestitution(0.5);
  pelota.setAllowSleeping(true);
  pelota.setFill(0);
  pelota.setName("pelota");

  if (pelota.getX() == (pelota.getX()-3)) {
    pelota.setFill(228, 63, 45);
    //estado = "perder";
  }
}

void detectarYLimpiar() {
  if (paso.equals("paso1")) {
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
      poly.setName("lineas");
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
    paso = "paso2";
  }
  if (paso.equals("paso2")) {
    dibujos.beginDraw();
    dibujos.background(fondo);
    dibujos.endDraw();
    paso = "paso3";
  }
  if (paso.equals("paso3")) {
    estado = "jugar";
  }
}
