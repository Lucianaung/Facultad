/*
ARREGLAR:
 * Cómo dejar abierto el borde para que se escapen
 * linea de salida --VER DE INCLINARLA MÁS
 * Cómo limpiar todos los dibujos, que al limpiar se borren los poly's dibujados
 * Que los objetos no estén en cuadrados sino en objetos mas ceñidos a la img
 
 
 MECANICAS DEL JUEGO:
 1 Etapa de dibujo: Hay un contador al momento de dibujar (15 seg),
   luego de eso pasa al estado de reconocer los dibujos y mapearlos.
 2 Etapa de correr: Una ver mapeado, empieza a correr la bolita.
   Al colicionar con distintos elementos del pizarrón tendrá ventajas o desventajas.
 3 Etapa de perder: Si la bolita no logra alcanzar la meta el jugador perderá una vida.
   Tiene solo 3 vidas para liberar a la bolita, sino se aparagará el juego(?
   cada vida puede constar de diferentes puntajes y funcionar como arcade
 4 Etapa de ganar: Si la bolita logra ser liberada del pizarrón, el juegador ganará y se le contarán sus puntos.
 */
 
 /*void keyPressed() {
 if (key == 'j') {
 mundo.add(pelota);
 }
 
 if (key=='b') {
 for (int i=0; i<4; i++) {
 dibujos.filter(BLUR, 4);
 }
 } else if (key=='d') {
 theBlobDetection.setPosDiscrimination(false);
 theBlobDetection.setThreshold(0.60f); //0.38f--> revisar con el pizarrón, es qué tanto gris recibe
 theBlobDetection.computeBlobs(dibujos.pixels);
 } else if (key=='l') {
 dibujos.beginDraw();
 dibujos.background(fondo);
 dibujos.endDraw();
 //mundo.clear(); //--> hacer que de alguna forma se borren los poly hechos para volver a intentar
 } else if (key=='p') {
 Blob b;
 EdgeVertex eA;
 for (int n = 0; n < theBlobDetection.getBlobNb(); n++) {
 poly = new FPoly(); //FPoly
 poly.setStatic(true);
 poly.setGrabbable(false);
 b = theBlobDetection.getBlob(n);
 if (b!=null) {
 for (int m = 0; m < b.getEdgeNb(); m += 20) { //--> simplifica la forma
 eA = b.getEdgeVertexA(m);
 if (eA !=null ) {
 poly.vertex(eA.x*width, eA.y*height);
 }
 }
 }
 mundo.add(poly);
 }
 } else if (key=='v') {
 //mundo.remove(poly); //--> hacer que de alguna forma se borren los poly hechos para volver a intentar
 mundo.clear();
 }
 }*/
