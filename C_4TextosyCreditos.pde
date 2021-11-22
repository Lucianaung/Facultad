//TODOS LOS TEXTOS DE LA AVENTURA GRÁFICA
class Textos {
  int NumTxt;
  String [] textos = {
  /*0*/    "A orillas del seco mar marciano se alzaba un pequeño pueblo blanco,\n silencioso y desierto. No había nadie en las calles. Más allá de\n él había una pista de cohetes, allí donde la última nave se había\n elevado entre las llamaradas hacia la Tierra.", 
  /*1*/    "Por las desiertas avenidas del pueblo, silbando suavemente y empujando una lata vacía,\n avanzaba un hombre alto y flaco. Walter Gripp. Vivía en una cabaña en\n las colinas azules y cada dos semanas bajaba al pueblo buscando una mujer \ncon quien casarse. Varios años volvió decepcionado y solo\n ¡y la semana pasada había encontrado el pueblo en este estado!", 
  /*2*/    "Semanas más tarde, vagando  por las calles del silencioso \npueblo de Marte, Walter escucha un telefono sonar.", 
  /*3*/    "Irrumpe en una casa, levanta el auricular\n y estando a punto de hablar, quien sea cuelga.", 
  /*4*/    "Walter se queda esperando a que alguien llame otra vez,\n pero por un tiempo nada sucede.", 
  /*5*/    "De repente, en otra casa varias calles arriba, vuelven a telefonear,\n pero esta vez la llamada se corta antes de que Walter pudiera tocar el teléfono.", 
  /*6*/    "Desepcionado por no recibir más llamadas, finalmente se rinde\n y decide disfrutar de la vida en Marte solitariamente.", 
  /*7*/    "Con la ilusión de que fuera una mujer, llama específicamente a todos\n los salones de belleza. Hasta que finalmente,\n en Nueva Texas atiende Genevieve Selsor. Pero por la caida de un poste, \nla llamada se corta.", 
  /*8*/    "Llega y se encuentra con el pueblo vacio y sin rastro de Genevive.\n Vuelve a Marlin, su pueblo, con la esperanza de que ella lo alla ido a buscar allí.", 
  /*9*/    "Al recorrer Marlin, encuentra a Genevive en la entrada del más fino salón.\n Al verla...", 
  /*10*/    "Pasan el día juntos, comprando por la tarde\n y teniendo una cena romántica por la noche.", 
  /*11*/    "Luego de un tiempo, deciden casarse\n y formar una familia.", 
  /*12*/    "Finalmente Walter encontró a la mujer ideal.", 
  /*13*/    "Nervioso y disgustado, al notar las intenciones de Genevive, \nWalter escapa rápidamente en su coche ignorando los gritos de locura de la mujer.", 
  /*14*/    "Luego de muchos días huyendo, atravesando más de 15000 kilómetros,\n Walter se aloja a un pequeño pueblo llamado Hillville Spring", 
  /*15*/    "Y si de vez en cuando, a lo largo de los años,\nsuena el teléfono, él no contesta.", 
  /*16*/    "Walter está feliz de que por primera vez en su vida en Marte,\n puede caminar con total libertad en el pueblo.", 
  /*17*/    "Nunca quiso estar entre las personas del pueblo, se sentía juzgado por ser\n un hombre callado y solitario. Así que solo bajaba cada dos semanas, en busca de\n los víveres necesarios; aunque todos creían que era para buscar una esposa.", 
  /*18*/    "Mientras camina, Walter escucha un ruido\n proveniente de un misterioso callejon.", 
  /*19*/    "Encuentra un esquelético gato pequeño buscando algo de comida.\n Walter conmovido lo adopta.", 
  /*20*/    "Caluroso pero contento, Walter disfruta de la vida tranquila en Marte.\n Donde nadie más puede molestarlo.", 
  /*21*/    "De vez en cuando escucha un telefono sonar, pero no le interesa\n saber que comparte Marte con alguien más. Para él es el único \n pisando suelo marciano. Y está bien así, lejos del caos terrícola.", 
  /*22-creditos*/    "Cuento: Los Pueblos Silenciosos\n Autor: Ray Bradbury\n Alumna: Ungaro Luciana\n Legajo: 88871/9\n Tecno 1, comisión 1,\n2021"};
  Textos() {
  }
  void dibujarTextos(int NumTxt_) {
    NumTxt = NumTxt_;
    fill(255);
    textSize(21);
    textAlign(CENTER, CENTER);
    text(textos[NumTxt], width/2, height/8);
  }

  void d_creditos() {
    rectMode(CENTER);
    noStroke();
    fill(100, 100, 100, 100);
    rect(width/2, height/2, 600, 400);
    fill(255);
    textSize(34);
    textAlign(CENTER, TOP);
    text(textos[22], width/2, height/4);
  }
}
