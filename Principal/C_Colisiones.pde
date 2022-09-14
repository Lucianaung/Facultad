void contactStarted(FContact contacto) {
  FBody cuerpo1 = contacto.getBody1();
  FBody cuerpo2 = contacto.getBody2();

  String nombre1 = conseguirNombre(cuerpo1);
  String nombre2 = conseguirNombre(cuerpo2);

  //COLISION CON OSC
  if (nombre1 == "pelota" && nombre2 == "osc") { //CHOQUE CON OSC
    println ("hubo contacto con OSC");
    osc.play();
    osc.amp(0.1);
  } else {
    osc.stop();
  }
  if (nombre2 == "pelota" && nombre1 == "osc") {
    println ("hubo contacto con OSC");
    osc.play();
    osc.amp(0.1);
  } else {
    osc.stop();
  }

  //COLISION CON FANTASMAS
  if (nombre1 == "pelota" && nombre2 == "fantasmitas") { //CHOQUE CON FANTASMAS --> PIERDE VIDAS
    println ("hubo contacto con fantasmitas");
    pierdeVida.play();
    pierdeVida.amp(0.1);
    mundo.remove(poly);
    mundo.remove(pelota);
  } else {
    pierdeVida.stop();
  }
  if (nombre2 == "pelota" && nombre1 == "fantasmitas") {
    println ("hubo contacto con fantasmitas");
    pierdeVida.play();
    pierdeVida.amp(0.1);
    mundo.remove(poly);
    mundo.remove(pelota);
  } else {
    pierdeVida.stop();
  }
}
