//FONDOS CORRESPONDIENTES A LA AVENTURA GRAFICA
class FondosAG {
  //PrincipalJuego principalJ;
  //PrincipalAG principalg;
  int numeroFondo;
  PImage [] ima = new PImage [25];
  FondosAG() {
    for (int i=0; i<ima.length; i++) {
      ima[i]= loadImage("img"+ i +".jpg");
    }
  }

  void dibujarFondosAG(int numeroFondo_) {
    numeroFondo = numeroFondo_;
    imageMode(CENTER);
    image(ima[numeroFondo], width/2, height/2, 800, 600);

  }
}
