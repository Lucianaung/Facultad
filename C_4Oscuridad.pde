// OSCURIDAD
class Oscuridad{
PImage oscuridad;
Oscuridad(){
  oscuridad = loadImage("oscuro.png");
}
void dibujarOscu(){
  imageMode(CENTER);
  image (oscuridad, mouseX,mouseY,width*2,height*2);
}
}
