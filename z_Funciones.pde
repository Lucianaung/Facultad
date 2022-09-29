void setear() {
  trazo = new SoundFile (this, "trazo.mp3");
  error = new SoundFile (this, "error.mp3");
  caer = new SoundFile (this, "caer.mp3");
  ganar = new SoundFile(this, "ganar.mp3"); 
  alarma = new SoundFile(this, "alarma.mp3");

  fondo = loadImage("fondo.png");

  dibujos = createGraphics(width, height);
  dibujos.beginDraw();
  dibujos.background(255);
  dibujos.endDraw();

  tiempoLimite = 12;
  grosorDibujo = 12;
  grosorLinea = 4;
  estado = "DIBUJAR";
  pelotaDesactivada = false;
  oscDesactivado = false;
  fantasmasDesactivado = false;
  alarmaDesactivada = false;
  perder = false;
  objetos();
  theBlobDetection = new BlobDetection(dibujos.width, dibujos.height);
}
