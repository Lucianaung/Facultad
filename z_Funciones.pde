void setear() {
  osc = new SoundFile (this, "oscSonido.mp3");
  pierdeVida = new SoundFile (this, "pierdeVida.mp3");
  victoria = new SoundFile (this, "victoria.mp3");

  fondo = loadImage("fondo.png");

  dibujos = createGraphics(width, height);
  dibujos.beginDraw();
  dibujos.background(fondo);
  dibujos.endDraw();

  tiempoLimite = 8;
  grosorDibujo = 12;
  grosorLinea = 4;
  estado = "DIBUJAR";
  pelotaDesactivada = false;
  oscDesactivado = false;
  fantasmasDesactivado = false;
  objetos();
  theBlobDetection = new BlobDetection(dibujos.width, dibujos.height);
}
