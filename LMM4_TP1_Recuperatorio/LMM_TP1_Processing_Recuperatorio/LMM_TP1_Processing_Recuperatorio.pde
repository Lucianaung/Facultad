import spout.*;
import processing.sound.*;
import processing.serial.*;
import gifAnimation.*;


Serial myPort;
String portStream;

//DECLARO CLASES OBJETOS
Conexion conexion;
Spout spout1, spout2, spout3;

PGraphics cRostro;
PGraphics cPiel;
PGraphics cTextura;

// DECLARO LOS ARREGLOS GIF
Gif [] imgCara = new Gif [14]; //14
Gif [] imgTextura = new Gif [4];
Gif [] imgOreja = new Gif [12]; //

// DECLARO SONIDOS
SoundFile habla0, habla1, habla2, habla3, notificacion1, notificacion2, notificacion3, interferencia, cortocircuito;


void setup() {
  size(800, 600, P2D);

  cRostro = createGraphics(800, 600, P2D);
  cPiel = createGraphics(800, 600, P2D);
  cTextura = createGraphics(800, 600, P2D);

  String portName = Serial.list()[0];
  myPort = new Serial (this, portName, 9600);
  myPort.bufferUntil('\n');

  conexion = new Conexion();

  imgCara[0] = new Gif(this, "cara0.gif");
  imgCara[1] = new Gif(this, "cara1.gif");
  imgCara[2] = new Gif(this, "cara2.gif");
  imgCara[3] = new Gif(this, "cara3.gif");
  imgCara[4] = new Gif(this, "cara4.gif");
  imgCara[5] = new Gif(this, "cara5.gif");
  imgCara[6] = new Gif(this, "cara6.gif");
  imgCara[7] = new Gif(this, "cara7.gif");
  imgCara[8] = new Gif(this, "cara8.gif");
  imgCara[9] = new Gif(this, "cara9.gif");
  imgCara[10] = new Gif(this, "cara10.gif");
  imgCara[11] = new Gif(this, "cara11.gif");
  imgCara[12] = new Gif(this, "cara12.gif");
  imgCara[13] = new Gif(this, "cara13.gif");
  imgTextura[0] = new Gif(this, "textura0.gif");
  imgTextura[1] = new Gif(this, "textura1.gif");
  imgTextura[2] = new Gif(this, "textura2.gif");
  imgTextura[3] = new Gif(this, "textura3.gif");
  imgOreja[0] = new Gif(this, "oreja0.gif");
  imgOreja[1] = new Gif(this, "oreja1.gif");
  imgOreja[2] = new Gif(this, "oreja2.gif");
  imgOreja[3] = new Gif(this, "oreja3.gif");
  imgOreja[4] = new Gif(this, "oreja4.gif");
  imgOreja[5] = new Gif(this, "oreja5.gif");
  imgOreja[6] = new Gif(this, "oreja6.gif");
  imgOreja[7] = new Gif(this, "oreja7.gif");
  imgOreja[8] = new Gif(this, "oreja8.gif");
  imgOreja[9] = new Gif(this, "oreja9.gif");
  imgOreja[10] = new Gif(this, "oreja10.gif");
  imgOreja[11] = new Gif(this, "oreja11.gif");

  imgCara[0].play();
  imgCara[1].play();
  imgCara[2].play();
  imgCara[3].play();
  imgCara[4].play();
  imgCara[5].play();
  imgCara[6].play();
  imgCara[7].play();
  imgCara[8].play();
  imgCara[9].play();
  imgCara[10].play();
  imgCara[11].play();
  imgCara[12].play();
  imgCara[13].play();
  imgTextura[0].play();
  imgTextura[1].play();
  imgTextura[2].play();
  imgTextura[3].play();
  imgOreja[0].play();
  imgOreja[1].play();
  imgOreja[2].play();
  imgOreja[3].play();
  imgOreja[4].play();
  imgOreja[5].play();
  imgOreja[6].play();
  imgOreja[7].play();
  imgOreja[8].play();
  imgOreja[9].play();
  imgOreja[10].play();
  imgOreja[11].play();

  habla0 = new SoundFile (this, "habla0.mp3");
  habla1 = new SoundFile (this, "habla1.mp3");
  habla2 = new SoundFile (this, "habla2.mp3");
  habla3 = new SoundFile (this, "habla3.mp3");
  notificacion1 = new SoundFile (this, "notificacion1.mp3");
  notificacion2 = new SoundFile (this, "notificacion2.mp3");
  notificacion3 = new SoundFile (this, "notificacion3.mp3");
  interferencia = new SoundFile (this, "interferencia.mp3");
  cortocircuito = new SoundFile (this, "cortocircuito.mp3");

  habla0.loop();
  habla1.loop();
  habla1.rate(1.0);
  habla1.amp(0.0);
  habla2.loop();
  habla2.rate(1.0);
  habla2.amp(0.0);
  habla3.loop();
  habla3.rate(1.0);
  habla3.amp(0.0);
  notificacion1.loop();
  notificacion1.rate(1.0);
  notificacion1.amp(0.0);
  notificacion2.loop();
  notificacion2.rate(1.0);
  notificacion2.amp(0.0);
  notificacion3.loop();
  notificacion3.rate(1.0);
  notificacion3.amp(0.0);
  interferencia.loop();
  interferencia.amp(0.0);
  cortocircuito.loop();
  cortocircuito.rate(1.0);
  cortocircuito.amp(0.0);

  spout1 = new Spout(this);
  spout1.createSender("Tp1_Pro_CapaRostro");
  spout2 = new Spout(this);
  spout2.createSender("Tp1_Pro_CapaPiel");
  spout3 = new Spout(this);
  spout3.createSender("Tp1_Pro_CapaTextura");

  imageMode(CORNER);
}

void draw() {
  background(0);
  noFill();
  stroke(255);
  strokeWeight(2);
  rect(80, 64, 160, 200);
  rect((width-160-80), 64, 160, 200);
  rect(80, 336, 160, 200);
  rect((width-160-80), 336, 160, 200);
  rect((width/2-(160/2)), (height/2-(200/2)), 160, 200);

  conexion.conexiones();
  conexion.pasoEstado();

  image(cRostro, 0, 0);
  image(cTextura, 0, 0);
  image(cPiel, 0, 0);

}

void serialEvent(Serial myPort) {
  portStream = myPort.readString();
}

void señalSpout() {
  spout1.sendTexture(cRostro);
  spout2.sendTexture(cPiel);
  spout3.sendTexture(cTextura);
}
