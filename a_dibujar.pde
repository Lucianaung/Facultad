void dibujar() {
  if (mousePressed) {
    trazo.play();
    trazo.amp(0.1);
    dibujos.beginDraw();
    dibujos.strokeWeight(grosorDibujo);
    dibujos.line(mouseX, mouseY, pmouseX, pmouseY);
    dibujos.endDraw();
  }
}
