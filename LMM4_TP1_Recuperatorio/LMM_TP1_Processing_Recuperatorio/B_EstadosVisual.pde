class EstadosVisual {
  ControlCaras controlC;
  ControlOrejas controlO;
  ControlTexturas controlT;

  int caraDPx, caraDPy, caraIPx, caraIPy;
  int orejaDPx, orejaDPy, orejaIPx, orejaIPy;
  PImage piel, verde;
  int pieltexPx, pieltexPy; //posiciones de textura y piel
  int tamW, tamH;

  EstadosVisual() {
    controlC = new ControlCaras();
    controlO = new ControlOrejas();
    controlT = new ControlTexturas();
    piel = loadImage("piel.jpg");
    verde = loadImage("verde.jpg");

    caraIPx = 80;
    caraIPy = 64;
    caraDPx = width-160-80;
    caraDPy = 64;
    orejaIPx = 80;
    orejaIPy = 336;
    orejaDPx = width-160-80;
    orejaDPy = 336;

    pieltexPx = width/2-(160/2);
    pieltexPy = height/2-(200/2);
    tamW = 160;
    tamH = 200;
  }

  void estado0() {
    cRostro.beginDraw();
    //cRostro.background(0);
    cRostro.tint (255, ((100*255)/100));
    controlC.cara(0, caraDPx, caraDPy, cRostro);
    controlC.cara(7, caraIPx, caraIPy, cRostro);
    controlO.oreja(0, orejaDPx, orejaDPy, cRostro);
    controlO.oreja(6, orejaIPx, orejaIPy, cRostro);
    cRostro.endDraw();

    cPiel.beginDraw();
    //cPiel.background(0);
    cPiel.image(piel, pieltexPx, pieltexPy, tamW, tamH);
    cPiel.endDraw();

    cTextura.beginDraw();
    //cTextura.background(0);
    tint (255, ((30*255)/100));
    controlT.textura(0, cTextura); //CODIGO
    cTextura.endDraw();
  }

  void estado1() {
    cRostro.beginDraw();
    //cRostro.background(0);
    cRostro.tint (255, ((90*255)/100));
    controlC.cara(1, caraDPx, caraDPy, cRostro);
    controlC.cara(8, caraIPx, caraIPy, cRostro);
    controlO.oreja(1, orejaDPx, orejaDPy, cRostro);
    controlO.oreja(7, orejaIPx, orejaIPy, cRostro);
    cRostro.endDraw();

    cPiel.beginDraw();
    //cPiel.background(0);
    cPiel.image(piel, pieltexPx, pieltexPy, tamW, tamH);
    cPiel.endDraw();

    cTextura.beginDraw();
    //cTextura.background(0);
    tint (255, ((40*255)/100));
    controlT.textura(0, cTextura); //CODIGO
    cTextura.endDraw();
  }

  void estado2() {
    cRostro.beginDraw();
    //cRostro.background(0);
    cRostro.tint (255, ((80*255)/100));
    controlC.cara(2, caraDPx, caraDPy, cRostro);
    controlC.cara(9, caraIPx, caraIPy, cRostro);
    controlO.oreja(1, orejaDPx, orejaDPy, cRostro);
    controlO.oreja(7, orejaIPx, orejaIPy, cRostro);
    cRostro.endDraw();

    cPiel.beginDraw();
    //cPiel.background(0);
    cPiel.image(piel, pieltexPx, pieltexPy, tamW, tamH);
    cPiel.tint(255, 50);
    cPiel.image(verde, pieltexPx, pieltexPy, tamW, tamH);
    cPiel.noTint();
    cPiel.endDraw();

    cTextura.beginDraw();
    //cTextura.background(0);
    cTextura.push();
    cTextura.tint (255, ((50*255)/100));
    controlT.textura(0, cTextura); //CODIGO
    cTextura.pop();
    cTextura.push();
    cTextura.tint (255, ((20*255)/100));
    controlT.textura(1, cTextura); //NOTIFICACIONES
    cTextura.pop();
    cTextura.endDraw();
  }

  void estado3() {
    cRostro.beginDraw();
    //cRostro.background(0);
    tint (255, ((60*255)/100));
    controlC.cara(3, caraDPx, caraDPy, cRostro);
    controlC.cara(10, caraIPx, caraIPy, cRostro);
    controlO.oreja(2, orejaDPx, orejaDPy, cRostro);
    controlO.oreja(8, orejaIPx, orejaIPy, cRostro);
    cRostro.endDraw();

    cPiel.beginDraw();
    //cPiel.background(0);
    cPiel.image(piel, pieltexPx, pieltexPy, tamW, tamH);
    cPiel.tint(255, 60);
    cPiel.image(verde, pieltexPx, pieltexPy, tamW, tamH);
    cPiel.noTint();
    cPiel.endDraw();

    cTextura.beginDraw();
    //cTextura.background(0);
    cTextura.push();
    cTextura.tint (255, ((60*255)/100));
    controlT.textura(0, cTextura); //CODIGO
    cTextura.pop();
    cTextura.push();
    cTextura.tint (255, ((30*255)/100));
    controlT.textura(1, cTextura); //NOTIFICACIONES
    cTextura.pop();
    cTextura.endDraw();
  }

  void estado4() {
    cRostro.beginDraw();
    //cRostro.background(0);
    tint (255, ((50*255)/100));
    controlC.cara(4, caraDPx, caraDPy, cRostro);
    controlC.cara(11, caraIPx, caraIPy, cRostro);
    controlO.oreja(3, orejaDPx, orejaDPy, cRostro);
    controlO.oreja(9, orejaIPx, orejaIPy, cRostro);
    cRostro.endDraw();

    cPiel.beginDraw();
    //cPiel.background(0);
    cPiel.image(piel, pieltexPx, pieltexPy, tamW, tamH);
    cPiel.tint(255, 70);
    cPiel.image(verde, pieltexPx, pieltexPy, tamW, tamH);
    cPiel.noTint();
    cPiel.endDraw();

    cTextura.beginDraw();
    //cTextura.background(0);
    cTextura.push();
    cTextura.tint (255, ((70*255)/100));
    controlT.textura(0, cTextura); //CODIGO
    cTextura.pop();
    cTextura.push();
    cTextura.tint (255, ((35*255)/100));
    controlT.textura(1, cTextura); //NOTIFICACIONES
    controlT.textura(3, cTextura);
    cTextura.pop();
    cTextura.push();
    cTextura.tint (255, ((30*255)/100));
    controlT.textura(2, cTextura); //GLITCH
    cTextura.pop();
    cTextura.endDraw();
  }

  void estado5() {
    cRostro.beginDraw();
    //cRostro.background(0);
    cRostro.tint (255, ((50*255)/100));
    controlC.cara(5, caraDPx, caraDPy, cRostro);
    controlC.cara(12, caraIPx, caraIPy, cRostro);
    controlO.oreja(4, orejaDPx, orejaDPy, cRostro);
    controlO.oreja(10, orejaIPx, orejaIPy, cRostro);
    cRostro.endDraw();

    cPiel.beginDraw();
    //cPiel.background(0);
    cPiel.image(piel, pieltexPx, pieltexPy, tamW, tamH);
    cPiel.tint(255, 80);
    cPiel.image(verde, pieltexPx, pieltexPy, tamW, tamH);
    cPiel.noTint();
    cPiel.endDraw();

    cTextura.beginDraw();
    //cTextura.background(0);
    cTextura.push();
    cTextura.tint (255, ((70*255)/100));
    controlT.textura(0, cTextura); //CODIGO
    cTextura.pop();
    cTextura.push();
    cTextura.tint (255, ((35*255)/100));
    controlT.textura(1, cTextura); //NOTIFICACIONES
    controlT.textura(3, cTextura);
    cTextura.pop();
    cTextura.push();
    cTextura.tint (255, ((30*255)/100));
    controlT.textura(2, cTextura); //GLITCH
    cTextura.pop();
    cTextura.endDraw();
  }

  void estado6() {
    cRostro.beginDraw();
    //cRostro.background(0);
    cRostro.tint (255, ((50*255)/100));
    controlC.cara(6, caraDPx, caraDPy, cRostro);
    controlC.cara(13, caraIPx, caraIPy, cRostro);
    controlO.oreja(5, orejaDPx, orejaDPy, cRostro);
    controlO.oreja(11, orejaIPx, orejaIPy, cRostro);
    cRostro.endDraw();

    cPiel.beginDraw();
    //cPiel.background(0);
    cPiel.image(piel, pieltexPx, pieltexPy, tamW, tamH);
    cPiel.tint(255, 90);
    cPiel.image(verde, pieltexPx, pieltexPy, tamW, tamH);
    cPiel.noTint();
    cPiel.endDraw();

    cTextura.beginDraw();
    //cTextura.background(0);
    cTextura.push();
    cTextura.tint (255, ((80*255)/100));
    controlT.textura(0, cTextura); //CODIGO
    cTextura.pop();
    cTextura.push();
    cTextura.tint (255, ((40*255)/100));
    controlT.textura(1, cTextura); //NOTIFICACIONES
    controlT.textura(3, cTextura);
    cTextura.pop();
    cTextura.push();
    cTextura.tint (255, ((40*255)/100));
    controlT.textura(2, cTextura); //GLITCH
    cTextura.pop();
    cTextura.endDraw();
  }
}
