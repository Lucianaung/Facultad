class Tiempo {
  PImage reloj = loadImage ("obj0.png");
  int segundos;

  Tiempo(int segundos_) {
    segundos = segundos_;
  }
  void dibujarTiempo() { 

    noStroke();
    fill(168, 44, 63);
    rectMode(CENTER);
    rect(100, 50, 150, 40); //100,50,150,40
    imageMode(CENTER);
    image(reloj, 55, 50, 25, 30);
    fill(255);
    textSize(31); 
    textAlign(CENTER, CENTER);
    text ("00:" + segundos, 125, 50);
    println(segundos);

    if (frameCount%30==0) {
      segundos --;
    }
  }
}
