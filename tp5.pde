/* TP #5
video explicativo: https://youtu.be/wKr3erv8zSM
Alumna: Ungaro Luciana (88871/99) */

import processing.sound.*;
SoundFile back, ganar, perder;
Principal principal;
PFont tipog;
void setup(){
    size (800,600);
    
    tipog = loadFont ("AgencyFB-Bold-50.vlw");
    textFont(tipog);
    
    back = new SoundFile(this, "back.mp3"); 
    ganar = new SoundFile(this, "clickGanar.mp3");
    perder = new SoundFile(this, "lose.mp3");
    
    principal = new Principal();
  }
void draw(){
    principal.dibujarP();
  }
void mousePressed() {
    principal.detectarBotones();
}
