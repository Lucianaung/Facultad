/* TP #4
video explicativo: https://youtu.be/wNcf8dkhQC8
Alumna: Ungaro Luciana (88871/99*/
PImage [] ima = new PImage [24];
PImage continuar;
PFont tipoPrinc, tipoSecund;
String pantalla;
String [] textos = {/*0*/"A orillas del seco mar marciano se alzaba un pequeño pueblo blanco,\n silencioso y desierto. No había nadie en las calles. Más allá de\n él había una pista de cohetes, allí donde la última nave se había\n elevado entre las llamaradas hacia la Tierra.", 
/*1*/"Por las desiertas avenidas del pueblo, silbando suavemente y empujando\n una lata vacía, avanzaba un hombre alto y flaco. Walter Gripp. Vivía en una cabaña en\n las colinas azules y cada dos semanas bajaba al pueblo\n buscando una mujer con quien casarse. Varios años volvió decepcionado y solo\n ¡y la semana pasada había encontrado el pueblo en este estado!",
/*2*/"Semanas más tarde, vagando  por las calles del silencioso \npueblo de Marte, Walter escucha un telefono sonar.",
/*3*/"Irrumpe en una casa, levanta el auricular\n y estando a punto de hablar, quien sea cuelga.",
/*4*/ "Walter se queda esperando a que alguien llame otra vez,\n pero por un tiempo nada sucede.",
/*5*/ "De repente, en otra casa varias calles arriba, vuelven a telefonear,\n pero esta vez la llamada se corta antes \nde que Walter pudiera tocar el teléfono.",
/*6*/ "Desepcionado por no recibir más llamadas, finalmente se rinde\n y decide disfrutar de la vida en Marte solitariamente.",
/*7*/ "Con la ilusión de que fuera una mujer, llama específicamente a todos\n los salones de belleza. Hasta que finalmente,\n en Nueva Texas atiende Genevieve Selsor. Pero por la caida de un poste, \nla llamada se corta.",
/*8*/ "Llega y se encuentra con el pueblo vacio y sin rastro de Genevive.\n Vuelve a Marlin, su pueblo, con la esperanza de que ella lo alla ido a buscar allí.",
/*9*/ "Al recorrer Marlin, encuentra a Genevive en la entrada del más fino salón.\n Al verla...",
/*10*/ "Pasan el día juntos, comprando por la tarde\n y teniendo una cena romántica por la noche.",
/*11*/ "Luego de un tiempo, deciden casarse\n y formar una familia.",
/*12*/ "Finalmente Walter encontró a la mujer ideal.",
/*13*/ "Nervioso y disgustado, al notar las intenciones de Genevive, \nWalter escapa rápidamente en su coche ignorando los gritos de locura de la mujer.",
/*14*/ "Luego de muchos días huyendo, atravesando más de 15000 kilómetros,\n Walter se aloja a un pequeño pueblo llamado Hillville Spring",
/*15*/ "Y si de vez en cuando, a lo largo de los años,\nsuena el teléfono, él no contesta.",
/*16*/ "Walter está feliz de que por primera vez en su vida en Marte,\n puede caminar con total libertad en el pueblo.",
/*17*/ "Nunca quiso estar entre las personas del pueblo, se sentía juzgado por ser\n un hombre callado y solitario. Así que solo bajaba cada dos semanas, en busca de\n los víveres necesarios; aunque todos creían que era para buscar una esposa.",
/*18*/ "Mientras camina, Walter escucha un ruido\n proveniente de un misterioso callejon.",
/*19*/ "Encuentra un esquelético gato pequeño buscando algo de comida.\n Walter conmovido lo adopta.",
/*20*/ "Caluroso pero contento, Walter disfruta de la vida tranquila en Marte.\n Donde nadie más puede molestarlo.",
/*21*/ "De vez en cuando escucha un telefono sonar, pero no le interesa\n saber que comparte Marte con alguien más. Para él esel único \n pisando suelo marciano. Y está bien así, lejos del caos terrícola.",
/*22-creditos*/ "Cuento: Los Pueblos Silenciosos\n Autor: Ray Bradbury\n Alumna: Ungaro Luciana\n Legajo: 88871/9\n Tecno 1, comi 1, 2021"};

void setup(){
  size(600,400);
  
  for(int i=0; i<ima.length; i++){
  ima[i]= loadImage("img"+ i +".jpg");
  }
  pantalla = "inicio";
  tipoPrinc = loadFont ("FuturaBT-Bold-48.vlw");
  textFont(tipoPrinc);
  tipoSecund = loadFont ("Dialog.plain-21.vlw");
  textFont (tipoSecund);
  continuar = loadImage ("sig.png");
}

void draw(){
  background(51,14,7);
  
  if (pantalla.equals("inicio")){
  inicio();
} else if (pantalla.equals("intro1")){
  intro1();
} else if (pantalla.equals ("intro2")){
  intro2();
} else if (pantalla.equals ("intro3")){
  intro3();
} else if (pantalla.equals ("creditos")){
  creditos();
} else if (pantalla.equals ("fin1_a")){
  fin1_a();
} else if (pantalla.equals ("fin1_b")){
  fin1_b();
} else if (pantalla.equals ("fin1_c")){
  fin1_c();
} else if (pantalla.equals ("fin1_d")){
  fin1_d();
} else if (pantalla.equals ("fin1_e")){
  fin1_e();
} else if (pantalla.equals ("fin1_f")){
  fin1_f();
} else if (pantalla.equals ("fin1_g")){
  fin1_g();
} else if (pantalla.equals ("fin1_h")){
  fin1_h();
} else if (pantalla.equals ("fin1_i")){
  fin1_i();
} else if (pantalla.equals ("fin1_j")){
  fin1_j();
} else if (pantalla.equals ("fin2_a")){
  fin2_a();
} else if (pantalla.equals ("fin2_b")){
  fin2_b();
} else if (pantalla.equals ("fin2_c")){
  fin2_c();
} else if (pantalla.equals ("fin3_a")){
  fin3_a();
} else if (pantalla.equals ("fin3_b")){
  fin3_b();
} else if (pantalla.equals ("fin3_c")){
  fin3_c();
} else if (pantalla.equals ("fin3_d")){
  fin3_d();
} else if (pantalla.equals ("fin3_e")){
  fin3_e();
} else if (pantalla.equals ("fin3_f")){
  fin3_f();
}
//println("pantalla " + pantalla);
}

void mousePressed(){
  
  //inicio
 if (clickear (mouseX,mouseY,150,180, 150,30 /*bot inicio*/) && pantalla.equals ("inicio")){
   pantalla = "intro1";
 }

 if (clickear (mouseX,mouseY,150,240, 150,30 /*bot creditos*/) && pantalla.equals ("inicio")){
   pantalla = "creditos";
 }
 //creditos
 if (clickear(mouseX, mouseY, width/2, height-50, 150,30 /*bot volver*/) && pantalla.equals("creditos")){
   pantalla = "inicio";
 }
 //intro
  if (clickear (mouseX,mouseY,width/2, height-50, 50,50 /*bot seguir*/) && pantalla.equals ("intro1")){
 pantalla = "intro2";
 } else
 if (clickear (mouseX,mouseY,width/2, height-50, 50,50 /*bot seguir*/) && pantalla.equals ("intro2")){
  pantalla = "intro3";
 } else
  if (clickear (mouseX,mouseY,100,height-50,100,30 /*opcion izq*/) && pantalla.equals ("intro3")){
  pantalla = "fin1_a";
 } else
 //final 3
  if (clickear (mouseX,mouseY,width-100,height-50,100,30 /*opcion der*/) && pantalla.equals ("intro3")){
  pantalla = "fin3_a";
 } else
 if (clickear (mouseX,mouseY,width/2, height-50, 50,50 /*bot seguir*/) && pantalla.equals ("fin3_a")){
  pantalla = "fin3_b";
  } else
  if (clickear (mouseX,mouseY,width/2, height-50, 50,50 /*bot seguir*/) && pantalla.equals ("fin3_b")){
  pantalla = "fin3_c";
 } else
 if (clickear (mouseX,mouseY,150,height-50, 250,50 /*opcion izq*/) && pantalla.equals ("fin3_c")){
  pantalla = "fin3_d";
 } else
 if (clickear (mouseX,mouseY,width-150,height-50, 250,50 /*opcion der*/) && pantalla.equals ("fin3_c")){
  pantalla = "fin3_e";
 } else
  if (clickear (mouseX,mouseY,width/2, height-50, 50,50 /*bot seguir*/) && pantalla.equals ("fin3_d")){
  pantalla = "fin3_e";
 } else
  if (clickear (mouseX,mouseY,width/2, height-50, 50,50 /*bot seguir*/) && pantalla.equals ("fin3_e")){
  pantalla = "fin3_f";
 } else
  if (clickear (mouseX,mouseY,width/2, height-50, 50,50 /*bot seguir*/) && pantalla.equals ("fin3_f")){
  pantalla = "creditos";
 } else

 //final 1
  if (clickear (mouseX,mouseY,width/2, height-50, 50,50 /*bot seguir*/) && pantalla.equals ("fin1_a")){
  pantalla = "fin1_b";
 } else
  if (clickear (mouseX,mouseY,width/2, height-50, 50,50 /*bot seguir*/) && pantalla.equals ("fin1_b")){
  pantalla = "fin1_c";
 } else
  if (clickear (mouseX,mouseY,150,height-50, 250,50/*opcion izq*/) && pantalla.equals ("fin1_c")){
  pantalla = "fin1_d";
 } else
   if (clickear (mouseX,mouseY,width/2, height-50, 50,50/*bot seguir*/) && pantalla.equals ("fin1_d")){
  pantalla = "fin1_j";
 } else 
  if (clickear (mouseX,mouseY, width-150,height-50, 250,50 /*opcion der*/) && pantalla.equals ("fin1_c")){
  pantalla = "fin1_e";
  } else
  if (clickear (mouseX,mouseY,150,height-50, 250,50/*opcion izq*/) && pantalla.equals ("fin1_e")){
  pantalla = "fin1_g";
 } else
  if (clickear (mouseX,mouseY,150,height-50, 250,50 /*opcion der*/) && pantalla.equals ("fin1_e")){
  pantalla = "fin1_f";
 } else
  if (clickear (mouseX,mouseY,width/2, height-50, 50,50 /*bot seguir*/) && pantalla.equals ("fin1_f")){
  pantalla = "fin1_g";
 } else
  if (clickear (mouseX,mouseY, width-150,height-50, 250,50 /*opcion der*/) && pantalla.equals ("fin1_g")){
  pantalla = "fin1_h";
 } else
  if (clickear (mouseX,mouseY,width/2, height-50, 50,50 /*bot seguir*/) && pantalla.equals ("fin1_h")){
  pantalla = "fin1_i";
 } else
  if (clickear (mouseX,mouseY,width/2, height-50, 50,50 /*bot seguir*/) && pantalla.equals ("fin1_i")){
  pantalla = "fin1_j";
 } else
  if (clickear (mouseX,mouseY,width/2, height-50, 50,50 /*bot seguir*/) && pantalla.equals ("fin1_j")){
  pantalla = "creditos";
 } else

// final 2
  if (clickear (mouseX,mouseY,150,height-50, 250,50/*opcion izq*/) && pantalla.equals ("fin1_g")){
  pantalla = "fin2_a";
 } else
  if (clickear (mouseX,mouseY,width/2, height-50, 50,50/*bot seguir*/) && pantalla.equals ("fin2_a")){
  pantalla = "fin2_b";
 } else 
  if (clickear (mouseX,mouseY,width/2, height-50, 50,50/*bot seguir*/) && pantalla.equals ("fin2_b")){
  pantalla = "fin2_c";
 } else  
  if (clickear (mouseX,mouseY,width/2, height-50, 50,50/*bot seguir*/) && pantalla.equals ("fin2_c")){
  pantalla = "creditos";
   }
 }

boolean clickear (int mx, int my, int px, int py, int ancho, int alto) {
  boolean click = mx>px-ancho/2 && mx<px+ancho/2 && my>py-alto/2 && my<py+alto/2 == true;
  return click;
}
