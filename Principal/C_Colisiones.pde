void contactStarted(FContact contacto) {
  FBody cuerpo1 = contacto.getBody1();
  FBody cuerpo2 = contacto.getBody2();

  String nombre1 = conseguirNombre(cuerpo1);
  String nombre2 = conseguirNombre(cuerpo2);

  //COLISION CON OSC
  if (nombre1 == "pelota" && nombre2 == "osc" && !sonidoDesactivado) { //CHOQUE CON OSC
    println ("hubo contacto con OSC");
    osc.play();
    osc.amp(0.1);
    sonidoDesactivado =true;
  }
  if (nombre2 == "pelota" && nombre1 == "osc" && !sonidoDesactivado) {
    println ("hubo contacto con OSC");
    osc.play();
    osc.amp(0.1);
    sonidoDesactivado =true;
  }
  
  //COLISION CON FANTASMAS
  if (nombre1 == "pelota" && nombre2 == "fantasmitas" && !sonidoDesactivado) { //CHOQUE CON FANTASMAS --> PIERDE VIDAS
    println ("hubo contacto con fantasmitas");
    pierdeVida.play();
    pierdeVida.amp(0.1);
    mundo.remove(poly); //CHECKEAR ESTO
    mundo.remove(pelota); //CHECKEAR ESTO
    sonidoDesactivado =true;
    estado = "perder";
  }
  if (nombre2 == "pelota" && nombre1 == "fantasmitas" && !sonidoDesactivado) {
    println ("hubo contacto con fantasmitas");
    pierdeVida.play();
    pierdeVida.amp(0.1);
    mundo.remove(poly); //CHECKEAR ESTO
    mundo.remove(pelota); //CHECKEAR ESTO
    sonidoDesactivado =true;
    estado = "perder";
  }
}
