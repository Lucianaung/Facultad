// seguir(width/2, height-75, 50,50);

void seguir() {
  imageMode(CENTER);
  image(continuar, width/2, height-50, 50,50);
}

// boton de inicio y créditos -son más grandes-
void boton (int px, int py, int ancho, int alto, String opcion){
 noStroke();
 fill(168,44,63);
 rectMode(CENTER);
 rect (px,py,ancho,alto,5);
 fill(255); 
 textFont(tipoPrinc);
 textSize(20); 
 textAlign(CENTER, CENTER);
 text(opcion, px, py);
 
}

// botones de opciones
void opciones(int px, int py, int ancho, int alto, String opcion){
 noStroke();
 fill(168,44,63);
 rectMode(CENTER);
 rect (px,py,ancho,alto,5);
 fill(255); 
 textFont (tipoSecund);
 textSize(15); 
 textAlign(CENTER, CENTER);
 text(opcion,px,py);
}
