class Principal{
    Fondos fondos;
    Inicio inicio;
    Tiempo tiempo;
    Botones boton, botonEsp, reiniciar, obj1, obj2, obj3;
    Oscuridad oscuridad;
    int pantalla;
    Principal (){
    fondos = new Fondos();
    inicio = new Inicio();
    obj1 = new Botones (width-25, height/2-25,150,200);
    obj2 = new Botones (140, 45,50,90);
    obj3 = new Botones (535,240, 30,45);
    reiniciar = new Botones(width/2,height/2+150,100,100); //int b_px, int b_py, int b_ancho, int b_alto
    boton = new Botones (width/2, 450,250,50);
    botonEsp = new Botones (width/2, 450,400,80);
    tiempo = new Tiempo(10);
    oscuridad = new Oscuridad();
    pantalla=0;;
    back.loop();
    back.amp(0.3);
  }
  
  void dibujarP(){
    fondos.back(pantalla);
    if (pantalla == 0){ //incio
      inicio.d_inicio();
      boton.dibujarBopciones(0,1,"Iniciar"); //(int partida_, int destino_, String opcion_)
    }
    if (pantalla == 1){ //nivel 1 
      oscuridad.dibujarOscu();
      obj1.zonaObjeto(1,7); //GANAR
      
      tiempo.dibujarTiempo(); //PERDER
      if (tiempo.segundos <= 0 && pantalla == 1){
         tiempo.segundos = 10;
         pantalla = 4;
         perder.play();
         perder.amp(0.1);
       } else {
         perder.stop();
       }
    }
    if (pantalla == 2){ //nivel 2
       oscuridad.dibujarOscu();
      obj2.zonaObjeto(2,8); //GANAR
      
      tiempo.dibujarTiempo(); //PERDER
      if (tiempo.segundos <= 0 && pantalla == 2){
         tiempo.segundos = 10;
         pantalla = 5;
         perder.play();
         perder.amp(0.1);
       } else {
         perder.stop();
       }
    }
    if (pantalla == 3){ // nivel 3
      oscuridad.dibujarOscu();
      obj3.zonaObjeto(3,9); //GANAR
      
      tiempo.dibujarTiempo(); //PERDER
if (tiempo.segundos <= 0 && pantalla == 3){
         tiempo.segundos = 10;
         pantalla = 6;
         perder.play();
         perder.amp(0.1);
       } else {
         perder.stop();
       }
    }
   if (pantalla == 4){ // perder 1
      reiniciar.dibujarBreiniciar(4,1);
  } 
    if (pantalla == 5){ // perder 2
      reiniciar.dibujarBreiniciar(5,2);
    }
    if (pantalla == 6){ // perder 3
      reiniciar.dibujarBreiniciar(6,3);
    }
    if (pantalla == 7){ // ganar 1
      boton.dibujarBopciones(7,2,"Siguiente nivel");
      tiempo.segundos = 10;
    }
    if (pantalla == 8){ // ganar 2
      boton.dibujarBopciones(8,3,"Siguiente nivel");
      tiempo.segundos = 10;
    }
    if (pantalla == 9){ // ganar 3
      botonEsp.dibujarBopciones(9,0,"Continuar con la historia"); //---------- EN ESTE CASO SE REINICIARÁ
      tiempo.segundos = 10;
    }
  
}
   
  void detectarBotones() {
    if (obj1.botonClickear(width-25, height/2-25,150,200) && pantalla == obj1.partida) {
      pantalla = obj1.destino;
      ganar.play();
      ganar.amp(0.2);
    }
    if (obj2.botonClickear(140, 45,50,90) && pantalla == obj2.partida) {
      pantalla = obj2.destino;
      ganar.play();
      ganar.amp(0.2);
    }
    if (obj3.botonClickear(535,240, 30,45) && pantalla == obj3.partida) {
      pantalla = obj3.destino;
      ganar.play();
      ganar.amp(0.2);
    }
    if (boton.botonClickear(width/2, 450, 250, 50) && pantalla == boton.partida) {
      pantalla = boton.destino;
    }
    if (reiniciar.botonClickear(width/2,height/2+150,100,100) && pantalla == reiniciar.partida) {
      pantalla = reiniciar.destino;
    }
    if (botonEsp.botonClickear(width/2, 450,400,80) && pantalla == botonEsp.partida) {
      pantalla = botonEsp.destino;
    }
  }
}
