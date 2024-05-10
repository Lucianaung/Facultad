class ControlCaras {
  int imgC;
  int posX;
  int posY;

  ControlCaras() {
  }
  void cara(int numCara, int x, int y) {
    imgC = numCara;
    posX = x;
    posY = y;
    image(imgCara[imgC], posX, posY, 400, 500);
  }
}

class ControlTexturas {
  int imgT;

  ControlTexturas() {
  }
  void textura(int numCara) {
    imgT = numCara;
    image(imgTextura[imgT], 550, 26, 400, 500);
  }
}
class ControlOrejas {
  int imgO;
  
  ControlOrejas() {
  }
  void oreja(int numOreja) {
    imgO = numOreja;
    image(imgOreja[imgO], 550, 573, 400, 500);
  }
}
