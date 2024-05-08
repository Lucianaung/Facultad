class Estados {
  PImage cara;
  Estados() {
    cara = loadImage ("cara.png");
    imageMode (CENTER);
    //codigo.play();
    //cara.mask(codigo);//no funciona si no son del mismo tamaño
  }

  //HACER DE ESTOS ESTADOS BOOLEANAS
  void estado1() {
    textSize(50);
    fill(255, 0, 0);
    text("ESTADO1", width/2, height/2);

    //image (video, width/2, height/2, width, height);

    push();
    tint (255, ((20*255)/100)); //saca % USAR ESTO HASTA USAR MASK
    image (codigo, width/2, height/2, width, height);
    pop();
  }

  void estado2() {
    push();
    tint (255, ((80*255)/100));
    image (cara, width/2, height/2, width, height);
    pop();
  fill (0);
    rect(50, 50, width, height);
    push();
    tint (255, ((30*255)/100)); //saca % USAR ESTO HASTA USAR MASK
    image (codigo, width/2, height/2, width, height);
    pop();
  }

  void estado3() {
    push();
    tint (255, ((60*255)/100));
    image (cara, width/2, height/2, width, height);
    pop();

    push();
    tint (255, ((40*255)/100)); //saca % USAR ESTO HASTA USAR MASK
    image (codigo, width/2, height/2, width, height);
    pop();

    push();
    tint (255, ((20*255)/100)); //saca % USAR ESTO HASTA USAR MASK
    image (interferencia, width/2, height/2, width, height);
    pop();
  }

  void estado4() {
    push();
    tint (255, ((50*255)/100)); //-------------AGREGAR A PARTIR DE ACÁ EL PARPADEO--------------
    image (cara, width/2, height/2, width, height);
    pop();

    push();
    tint (255, ((50*255)/100)); //saca % USAR ESTO HASTA USAR MASK
    image (codigo, width/2, height/2, width, height);
    pop();

    push();
    tint (255, ((30*255)/100)); //saca % USAR ESTO HASTA USAR MASK
    image (interferencia, width/2, height/2, width, height);
    pop();
  }

  void estado5() {
    push();
    tint (255, ((40*255)/100));
    image (cara, width/2, height/2, width, height);
    pop();

    push();
    tint (255, (50*255/100)); //saca % USAR ESTO HASTA USAR MASK
    image (codigo, width/2, height/2, width, height);
    pop();

    push();
    tint (255, ((30*255)/100)); //saca % USAR ESTO HASTA USAR MASK
    image (interferencia, width/2, height/2, width, height);
    pop();

    push();
    tint (255, ((30*255)/100)); //saca % USAR ESTO HASTA USAR MASK
    image (mouse, width/2, height/2, width, height);
    pop();
  }

  void estado6() {
    push();
    tint (255, ((40*255)/100));
    image (cara, width/2, height/2, width, height);
    pop();

    push();
    tint (255, (50*255/100)); //saca % USAR ESTO HASTA USAR MASK
    image (codigo, width/2, height/2, width, height);
    pop();

    push();
    tint (255, ((40*255)/100)); //saca % USAR ESTO HASTA USAR MASK
    image (interferencia, width/2, height/2, width, height);
    pop();

    push();
    tint (255, ((40*255)/100)); //saca % USAR ESTO HASTA USAR MASK
    image (mouse, width/2, height/2, width, height); //-------ACELERAR--------
    pop();
  }

  void estado7() {
    push();
    tint (255, ((30*255)/100));
    image (cara, width/2, height/2, width, height);
    pop();

    push();
    tint (255, (50*255/100)); //saca % USAR ESTO HASTA USAR MASK
    image (codigo, width/2, height/2, width, height);
    pop();

    push();
    tint (255, ((70*255)/100)); //saca % USAR ESTO HASTA USAR MASK
    image (interferencia, width/2, height/2, width, height);
    pop();

    push();
    tint (255, ((50*255)/100)); //saca % USAR ESTO HASTA USAR MASK
    image (mouse, width/2, height/2, width, height); //-------ACELERAR--------
    pop();
  }
}
