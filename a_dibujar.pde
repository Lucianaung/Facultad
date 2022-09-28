void dibujar() {
  dibujos.beginDraw();
  dibujos.strokeWeight(grosorDibujo);
  dibujos.line(mouseX, mouseY, pmouseX, pmouseY);
  dibujos.endDraw();
}
