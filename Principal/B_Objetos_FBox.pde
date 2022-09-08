class Objetos extends FBox {
  int numeroImg;
  String nombre;
  PImage [] ima = new PImage [37];
  Objetos(float w_, float h_) {

    super (w_, h_);

    for (int i=0; i<ima.length; i++) {
      ima[i]= loadImage("img"+ i +".png");
    }
  }
  
  void inicializar (float x_, float y_, int numeroImg_, String nombre_) {
    nombre = nombre_;
    numeroImg = numeroImg_;
    setPosition(x_, y_);
    attachImage(ima[numeroImg]);
    setName(nombre);
    setStatic(true);
    setGrabbable(false);
  }
}
