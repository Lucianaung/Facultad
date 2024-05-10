/* -----ANOTACIONES-----
 Las conexiones se cambian desde A_Conexiones. Ahí se controlan los estados.
 Ya está todo conectado para que funcione con 12 caracteres de señal Arduino :)
 */
import spout.*;
import processing.sound.*;
import processing.serial.*;
import gifAnimation.*;

Serial myPort;
String portStream;

//DECLARO CLASES OBJETOS
Conexion conexion;
Spout spout;

// DECLARO LOS ARREGLOS GIF
Gif [] imgCara = new Gif [7];
Gif [] imgTextura = new Gif [4];
Gif [] imgOreja = new Gif [6];

// DECLARO SONIDOS
SoundFile, habla0, habla1, habla2, habla3, notificacion1, notificacion2, notificacion3, interferencia, cortocircuito;

void setup() {
  size(1500, 1100, P3D);

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

  imgCara[0].play();
  imgCara[1].play();
  imgCara[2].play();
  imgCara[3].play();
  imgCara[4].play();
  imgCara[5].play();
  imgCara[6].play();
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

  spout = new Spout(this);
  spout.createSender("Tp1_processing");
}

void draw() {
  background(0);
  push();
  noFill();
  strokeWeight(2);
  stroke(150);
  rect(89, 26, 400, 500);
  rect(550, 26, 400, 500);
  rect(89, 573, 400, 500);
  rect(550, 573, 400, 500);
  pop();
  conexion.conexiones();
  conexion.pasoEstado();
  spout.sendTexture();
}

void serialEvent(Serial myPort) {
  portStream = myPort.readString();
}
