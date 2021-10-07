// PANTALLA DE INICIO
void inicio(){
  background(0);
  imageMode(CORNER);
  image (ima[0],0,0);
  fill (0);
  textFont(tipoPrinc);
  textAlign(LEFT);
  textSize(32);
  text ("LOS PUEBLOS\nSILENCIOSOS",50,100);
  
  boton(150,180, 150,30, "INICIO");
  boton(150,240, 150,30, "CRÉDITOS");
}

// intros
void intro1(){
  imageMode(CENTER);
  image(ima[1], width/2,height/2,width/2,height/2);
  fill(255);
  textFont (tipoSecund);
  textSize(15);
  textAlign(CENTER);
  text(textos[0], width/2, 30);
  seguir();
}
void intro2(){
  imageMode(CENTER);
  image(ima[2], width/2,height/2+20,width/2,height/2);
  fill(255);
  textFont (tipoSecund);
  textSize(15);
  textAlign(CENTER);
  text(textos[1], width/2, 30);
  seguir();
}
void intro3(){
  imageMode(CENTER);
  image(ima[3], width/2,height/2,width/2,height/2);
  fill(255);
  textFont (tipoSecund);
  textSize(15);
  textAlign(CENTER);
  text(textos[2], width/2, 50);
  opciones(100,height-50,100,30,"Atiende"); //opciones(int px, int py, int ancho, int alto, String opcion)
  opciones(width-100,height-50,100,30,"No atiende");
}

//créditos
void creditos(){
  imageMode(CENTER);
  image(ima[23], width/2-1000/6,height/2,1000,height);
  fill(255);
  textSize(22);
  textLeading(40);
  textAlign(CENTER,CENTER);
  text(textos[22], width/2, height/2);
  boton( width/2, height-50, 150,30, "VOLVER"); // boton(int px, int py, int ancho, int alto, String opcion)
}
