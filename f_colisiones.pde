String conseguirNombre(FBody cuerpo) {
  String nombre = "vacio";

  if (cuerpo != null)
  {
    nombre = cuerpo.getName();

    if (nombre == null)
    {
      nombre = "nada";
    }
  }
  return nombre;
}

void contactStarted(FContact contacto) {

  FBody cuerpo1 = contacto.getBody1();
  FBody cuerpo2 = contacto.getBody2();

  String nombre1 = conseguirNombre(cuerpo1);
  String nombre2 = conseguirNombre(cuerpo2);

  //COLISION CON FANTASMAS - PIERDE
  if (((nombre1 == "pelota" && nombre2 == "fantasmitas")||(nombre2 == "pelota" && nombre1 == "fantasmitas")) && !fantasmasDesactivado) {
    error.play();
    error.amp(0.1);
    fantasmasDesactivado = true;
    perder=true;
    println ("hubo contacto con fantasmitas");
  }
}
