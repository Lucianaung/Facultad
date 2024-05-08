class Estados {
  ControlCaras controlC;
  ControlTexturas controlT;

  int estadoActual = 0; // Estado inicial

  Estados() {
    controlC = new ControlCaras();
    controlT = new ControlTexturas();
  }

  void estado0() {
    estadoActual = 0;

    push();
    tint (255, ((40*255)/100)); //PIEL
    controlC.cara(7);
    pop();

    push();
    tint (255, ((100*255)/100)); //CARA
    controlC.cara(0);
    pop();

    push();
    tint (255, ((20*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
  }

  void estado1() {
    estadoActual = 1;

    push();
    tint (255, ((40*255)/100)); //PIEL
    controlC.cara(7);
    pop();

    push();
    tint (255, ((90*255)/100)); //CARA
    controlC.cara(1);
    pop();

    push();
    tint (255, ((30*255)/100)); //CODIGO
    controlT.textura(0);
    pop();
  }

  void estado2() {
    estadoActual = 2;

    push();
    tint (255, ((40*255)/100)); //PIEL
    controlC.cara(7);
    pop();

    push();
    tint (255, ((80*255)/100)); //CARA
    controlC.cara(2);
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
    estadoActual = 3;

    push();
    tint (255, ((40*255)/100)); //PIEL
    controlC.cara(7);
    pop();

    push();
    tint (255, ((60*255)/100)); //CARA
    controlC.cara(3);
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
    estadoActual = 4;

    push();
    tint (255, ((35*255)/100)); //PIEL
    controlC.cara(7);
    pop();

    push();
    tint (255, ((50*255)/100)); //CARA
    controlC.cara(4);
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
    estadoActual = 5;

    push();
    tint (255, ((35*255)/100)); //PIEL
    controlC.cara(7);
    pop();

    push();
    tint (255, ((50*255)/100)); //CARA
    controlC.cara(5);
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
    estadoActual = 6;

    push();
    tint (255, ((30*255)/100)); //PIEL
    controlC.cara(7);
    pop();

    push();
    tint (255, ((50*255)/100)); //CARA
    controlC.cara(6);
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
    estadoActual = 7;

    push();
    tint (255, ((30*255)/100)); //PIEL
    controlC.cara(7);
    pop();

    push();
    tint (255, ((50*255)/100)); //CARA
    controlC.cara(7);
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

  int getEstadoActual() {
    return estadoActual;
  }

  void cambiarEstado(int nuevoEstado) {
    estadoActual = nuevoEstado;
  }
}
