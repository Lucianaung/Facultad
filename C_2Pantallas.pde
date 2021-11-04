// FONDOS CORRESPONDIENTES A LOS 3 NIVELES + INICIO
class Fondos{
  PImage [] ima = new PImage [10];
  int fondo;
Fondos(){
  for(int i=0; i<ima.length; i++){
  ima[i] = loadImage("img"+i+".jpg");
  }
}
void back(int numeroPantalla){
  fondo = numeroPantalla;
  imageMode(CENTER);
  image(ima[fondo],width/2,height/2,800,600); 
}
}
// CONFIGURACIÓN DE PANTALLA DE INICIO: TÍTULO, INSTRUCCIONES, MUESTRA DE OBJETIVO
class Inicio{
  PImage titulo, figura;
  Inicio(){
    titulo = loadImage ("obj3.png");
    figura = loadImage ("obj1.png");
  }

  void d_inicio(){
    rectMode(CENTER);
    noStroke ();
    fill(38,43,81,200);
    rect(width/2,height/2,width-100,height-100);
    
    push();
    imageMode(CENTER);
    image (titulo, width/2, 150, 350,100);
    pop();
    
    textAlign(CENTER);
    textSize(20);
    fill(255);
    text ("Instrucciones: \n Encontrá a Genevive en cada uno de los tres niveles, \n buscala cuidadosamente, pero ojo! porque tenés tiempo limite", width/2, 250);
    
    push();
    imageMode(CENTER);
    image (figura, width/2, 360, 60,90);
    pop();
    
  }
  }
