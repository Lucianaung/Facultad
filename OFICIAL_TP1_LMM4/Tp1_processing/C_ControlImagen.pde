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
    image(imgTextura[imgT], 550, 50, 400, 500);
  }
}
