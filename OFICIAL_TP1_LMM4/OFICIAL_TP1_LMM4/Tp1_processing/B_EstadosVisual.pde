class EstadosVisual {
  ControlCaras controlC;
  ControlTexturas controlT;
  ControlOrejas controlO;
  PImage piel, verde;
  int textPx, textPy;

  EstadosVisual() {
    textSize(32);
    fill(255);
    controlC = new ControlCaras();
    controlT = new ControlTexturas();
    controlO = new ControlOrejas();
    piel = loadImage("piel.jpg");
    verde = loadImage("verde.jpg");
    textPx = 1010;
    textPy = 1034;
  }

  void estado0() {
    text("Estado: 0", textPx, textPy);
    push();
    image(piel, 1010, 26, 400, 500);//PIEL
    pop();
    push();
    tint (255, ((100*255)/100)); //CARA
    controlC.cara(0, 89, 26);
    controlO.oreja(0);
    pop();
    push();
    tint (255, ((20*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
  }

  void estado1() {
    text("Estado: 1", textPx, textPy);

    //VISUAL
    push();
    image(piel, 1010, 26, 400, 500);//PIEL
    pop();
    push();
    tint (255, ((90*255)/100)); //CARA
    controlC.cara(1, 89, 26);
    controlO.oreja(1);
    pop();
    push();
    tint (255, ((30*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
  }

  void estado2() {
    text("Estado: 2", textPx, textPy);
    //VISUAL
    push();
    image(piel, 1010, 26, 400, 500);//PIEL
    tint(255, 50);
    image(verde, 1010, 26, 400, 500);
    noTint();
    pop();
    push();
    tint (255, ((80*255)/100)); //CARA
    controlC.cara(2, 89, 26);
    controlO.oreja(1);
    pop();
    push();
    tint (255, ((40*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
    push();
    tint (255, ((20*255)/100)); //NOTIFICACIONES
    controlT.textura(1);
    pop();
  }

  void estado3() {
    text("Estado: 3", textPx, textPy);
    //VISUAL
    push();
    image(piel, 1010, 26, 400, 500);//PIEL
    tint(255, 60);
    image(verde, 1010, 26, 400, 500);
    noTint();
    pop();
    push();
    tint (255, ((60*255)/100)); //CARA
    controlC.cara(3, 89, 26);
    controlO.oreja(2);
    pop();
    push();
    tint (255, ((45*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
    push();
    tint (255, ((30*255)/100)); //NOTIFICACIONES
    controlT.textura(1);
    pop();
  }

  void estado4() {
    text("Estado: 4", textPx, textPy);
    //VISUAL
    push();
    image(piel, 1010, 26, 400, 500);//PIEL
    tint(255, 70);
    image(verde, 1010, 26, 400, 500);
    noTint();
    pop();
    push();
    tint (255, ((50*255)/100)); //CARA
    controlC.cara(4, 89, 26);
    controlO.oreja(2);
    pop();
    push();
    tint (255, ((45*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
    push();
    tint (255, ((35*255)/100)); //NOTIFICACIONES
    controlT.textura(1);
    controlT.textura(3);
    pop();
    push();
    tint (255, ((30*255)/100)); //GLITCH
    controlT.textura(2);
    pop();
  }

  void estado5() {
    text("Estado: 5", textPx, textPy);
    //VISUAL
    push();
    image(piel, 1010, 26, 400, 500);//PIEL
    tint(255, 80);
    image(verde, 1010, 26, 400, 500);
    noTint();
    pop();
    push();
    tint (255, ((50*255)/100)); //CARA
    controlC.cara(5, 89, 26);
    controlO.oreja(3);
    pop();
    push();
    tint (255, ((45*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
    push();
    tint (255, ((35*255)/100)); //NOTIFICACIONES
    controlT.textura(1);
    controlT.textura(3);
    pop();
    push();
    tint (255, ((30*255)/100)); //GLITCH
    controlT.textura(2);
    pop();
  }

  void estado6() {
    text("Estado: 6", textPx, textPy);
    //VISUAL
    push();
    image(piel, 1010, 26, 400, 500);//PIEL
    tint(255, 90);
    image(verde, 1010, 26, 400, 500);
    noTint();
    pop();
    push();
    tint (255, ((50*255)/100)); //CARA
    controlC.cara(6, 89, 26);
    controlO.oreja(4);
    pop();
    push();
    tint (255, ((48*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
    push();
    tint (255, ((40*255)/100)); //NOTIFICACIONES
    controlT.textura(1);
    controlT.textura(3);
    pop();
    push();
    tint (255, ((40*255)/100)); //GLITCH
    controlT.textura(2);
    pop();
  }

  void estado7() {
    text("Estado: 7", textPx, textPy);
    //VISUAL
    push();
    image(piel, 1010, 26, 400, 500);//PIEL
    tint(255, 100);
    image(verde, 1010, 26, 400, 500);
    noTint();
    pop();
    push();
    tint (255, ((50*255)/100)); //CARA
    controlC.cara(7, 89, 26);
    controlO.oreja(5);
    pop();
    push();
    tint (255, ((50*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
    push();
    tint (255, ((50*255)/100)); //NOTIFICACIONES
    controlT.textura(1);
    controlT.textura(3);
    pop();
    push();
    tint (255, ((60*255)/100)); //GLITCH
    controlT.textura(2);
    pop();
  }
}
