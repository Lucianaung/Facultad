//TP FINAL
// video explicativo:
// Alumna: Ungaro Luciana (88871/99)

import processing.sound.*;
SoundFile back, ganar, perder;
PrincipalAG principalag;

void setup() {
  size(800, 600);

  back = new SoundFile(this, "back.mp3"); 
  ganar = new SoundFile(this, "clickGanar.mp3");
  perder = new SoundFile(this, "lose.mp3");

  principalag = new PrincipalAG();
}

void draw() {
  principalag.dibujarPrincipalAG();
}

void mousePressed() {
  principalag.detec_BotonesAG();
}
