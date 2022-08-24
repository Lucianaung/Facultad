/*class Cajas {
  PImage [] ima = new PImage [2];
  int ancho, alto, px, py, img;
  FBox caja;
  Cajas() {
    for (int i=0; i<ima.length; i++) {
      ima[i]= loadImage("img"+ i +".png");
    }
  }
  void dibujarObj(int ancho_, int alto_, int px_, int py_, int img_) {
    ancho = ancho_;
    alto = alto_;
    px = px_;
    py = py_;
    img = img_;
    caja = new FBox(ancho, alto);//65, 18
    caja.setPosition(px, py);//width/2, 200
    caja.setStatic(true);
    caja.attachImage(ima[img]);
    caja.setNoStroke();
  }
}
*/
