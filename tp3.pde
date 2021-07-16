// Trabajo Práctico 3
// Ungaro Luciana
// Comisión 1 - José Luis Bugiolachi
// Video:https://youtu.be/kOXwTOtjjYo

int tam;
int tam2;
int cant=20;
int cant2=50;
float op;
void setup(){
 size (400,600);
 surface.setResizable(true);
 tam= (height+height/2)/cant;
 tam2= (height+height/2)/cant2;
}

void draw(){
 background (0);
 
  // 1 pantalla
 //abanico de lineas
 for (int i=-tam; i<cant+tam; i+=3){
   stroke(103,255,236);
   strokeWeight(1);
  line (width/2,height/2,width/2+mouseX,i*tam); 
  line (width/2,height/2,width/2-mouseX,i*tam); 
 
  //lineas A verticales
 strokeWeight(8);
  stroke(255,80,156);
 line (width/2-50,0,width/2-50,height);
 line (width/2+50,0,width/2+50,height);
 }
  // 2 pantalla
  if (mousePressed){
     background (0);
    //abanico de lineas
 for (int i=-60; i<cant2+tam; i+=3){
   strokeWeight(1);
  op=map(mouseX,0,width/2,0,255);
  stroke(103,255,236,op);
  line (0,height/2,mouseX,i*tam2);
  line (width,height/2,mouseX,i*tam2); 
   }
 }
 
  //lineas B verticales
 strokeWeight(8);
  stroke(205,106,255);
 line (width/2-50,0,width/2-50,height);
 line (width/2+50,0,width/2+50,height);
}
