//class ControlCaras {
//  int imgC;
//  int posX;
//  int posY;
//  PGraphics pgC;

//  ControlCaras() {
//  }
//  void cara(int numCara, int x, int y, PGraphics capaC) {
//    imgC = numCara;
//    posX = x;
//    posY = y;
//    pgC = capaC;
//    image(imgCara[imgC], posX, posY, 160, 200);
//  }
//}

class ControlCaras {
  int imgC;

  ControlCaras() {
  }

  void cara(int numCara, int x, int y, PGraphics capaC) {
    imgC = numCara;
    capaC.image(imgCara[imgC], x, y, 160, 200);
  }
}

class ControlTexturas {
  int imgT;

  ControlTexturas() {
  }

  void textura(int numTextura, PGraphics capaT) {
    imgT = numTextura;
    capaT.image(imgTextura[imgT], capaT.width/2 - 160/2, capaT.height/2 - 200/2, 160, 200);
  }
}

//class ControlTexturas {
//  int imgT;
//  PGraphics pgT;

//  ControlTexturas() {
//  }
//  void textura(int numCara, PGraphics capaT) {
//    imgT = numCara;
//    pgT = capaT;
//    image(imgTextura[imgT], width/2-(160/2), height/2-(200/2), 160, 200);//320,74
//  }
//}
//class ControlOrejas {
//  int imgO;
//  int posX;
//  int posY;  
//  PGraphics pgO;

//  ControlOrejas() {
//  }
//  void oreja(int numOreja, int x, int y, PGraphics capaO) {
//    imgO = numOreja;
//    posX = x;
//    posY = y;
//    pgO = capaO;
//    image(imgOreja[imgO], x, y, 150, 188);
//  }
//}

class ControlOrejas {
  void oreja(int numOreja, int x, int y, PGraphics capaO) {
    capaO.image(imgOreja[numOreja], x, y, 150, 188);
  }
}
