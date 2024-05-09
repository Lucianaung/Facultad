class EstadosVisual {
  ControlCaras controlC;
  ControlTexturas controlT;

  EstadosVisual() {
    textSize(32);
    fill(255);
    controlC = new ControlCaras();
    controlT = new ControlTexturas();
  }

  void estado0() {
    text("Estado: 0", 89, 577);
    //VISUAL
    push();
    tint (255, ((80*255)/100)); //PIEL
    controlC.cara(7, 1010, 50);
    pop();
    push();
    tint (255, ((100*255)/100)); //CARA
    controlC.cara(0, 89,50);
    pop();
    push();
    tint (255, ((20*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
  }

  void estado1() {
    text("Estado: 1", 89, 577);
    //VISUAL
    push();
    tint (255, ((83*255)/100)); //PIEL
    controlC.cara(7, 1010, 50);
    pop();
    push();
    tint (255, ((90*255)/100)); //CARA
    controlC.cara(1, 89,50);
    pop();
    push();
    tint (255, ((30*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
  }

  void estado2() {
    text("Estado: 2", 89, 577);
    //VISUAL
    push();
    tint (255, ((78*255)/100)); //PIEL
    controlC.cara(7, 1010, 50);
    pop();
    push();
    tint (255, ((80*255)/100)); //CARA
    controlC.cara(2, 89,50);
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
    text("Estado: 3", 89, 577);
    //VISUAL
    push();
    tint (255, ((75*255)/100)); //PIEL
    controlC.cara(7, 1010, 50);
    pop();
    push();
    tint (255, ((60*255)/100)); //CARA
    controlC.cara(3, 89,50);
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
    text("Estado: 4", 89, 577);
    //VISUAL
    push();
    tint (15, 230, 62, ((70*255)/100)); //PIEL
    controlC.cara(7, 1010, 50);
    pop();
    push();
    tint (255, ((50*255)/100)); //CARA
    controlC.cara(4, 89,50);
    pop();
    push();
    tint (255, ((45*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
    push();
    tint (255, ((35*255)/100)); //NOTIFICACIONES
    controlT.textura(1);
    pop();
    push();
    tint (255, ((30*255)/100)); //GLITCH
    controlT.textura(2);
    pop();
  }

  void estado5() {
    text("Estado: 5", 89, 577);
    //VISUAL
    push();
    tint (5, 194, 47, ((70*255)/100)); //PIEL
    controlC.cara(7, 1010, 50);
    pop();
    push();
    tint (255, ((50*255)/100)); //CARA
    controlC.cara(5, 89,50);
    pop();
    push();
    tint (255, ((45*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
    push();
    tint (255, ((35*255)/100)); //NOTIFICACIONES
    controlT.textura(1);
    pop();
    push();
    tint (255, ((30*255)/100)); //GLITCH
    controlT.textura(2);
    pop();
  }

  void estado6() {
    text("Estado: 6", 89, 577);
    //VISUAL
    push();
    tint (4, 153, 37, ((70*255)/100)); //PIEL
    controlC.cara(7, 1010, 50);
    pop();
    push();
    tint (255, ((50*255)/100)); //CARA
    controlC.cara(6, 89,50);
    pop();
    push();
    tint (255, ((48*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
    push();
    tint (255, ((40*255)/100)); //NOTIFICACIONES
    controlT.textura(1);
    pop();
    push();
    tint (255, ((40*255)/100)); //GLITCH
    controlT.textura(2);
    pop();
  }

  void estado7() {
    text("Estado: 7", 89, 577);
    //VISUAL
    push();
    tint (3, 133, 31, ((70*255)/100)); //PIEL
    controlC.cara(7, 1010, 50);
    pop();
    push();
    tint (255, ((50*255)/100)); //CARA
    controlC.cara(7, 89,50);
    pop();
    push();
    tint (255, ((50*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
    push();
    tint (255, ((50*255)/100)); //NOTIFICACIONES
    controlT.textura(1);
    pop();
    push();
    tint (255, ((60*255)/100)); //GLITCH
    controlT.textura(2);
    pop();
  }
}
