// -----ANOTACIONES-----
//Las conexiones se cambian desde A_Conexiones. Ahí se controlan los estados.
//Ya está todo conectado para que funcione con 12 caracteres de señal Arduino :)
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
Gif []  imgCara = new Gif [9];
Gif [] imgTextura = new Gif [3];

// DECLARO SONIDOS
SoundFile habla, notificacion, interferencia, cortocircuito;

void setup() {
  size(1500, 700, P3D);

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
  imgTextura[0] = new Gif(this, "textura0.gif");
  imgTextura[1] = new Gif(this, "textura1.gif");
  imgTextura[2] = new Gif(this, "textura2.gif");

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

  habla = new SoundFile (this, "habla.mp3");
  notificacion = new SoundFile (this, "notificacion.mp3");
  interferencia = new SoundFile (this, "interferencia.mp3");
  cortocircuito = new SoundFile (this, "cortocircuito.mp3");

  habla.loop();
  habla.rate(1.0);
  habla.amp(0.0);
  notificacion.loop();
  notificacion.rate(1.0);
  notificacion.amp(0.0);
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
  rect(550, 50, 400, 500);
  rect(89, 50, 400, 500);
  pop();
  conexion.conexiones();
  conexion.pasoEstado();
  spout.sendTexture();
}

void serialEvent(Serial myPort) {
  portStream = myPort.readString();
}
