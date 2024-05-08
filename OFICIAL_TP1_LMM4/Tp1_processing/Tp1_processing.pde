import processing.sound.*;
import processing.serial.*;
import gifAnimation.*;

Serial myPort;
String portStream;

// DECLARO LOS ARREGLOS GIF
Gif []  imgCara = new Gif [9];
Gif [] imgTextura = new Gif [3];

// DECLARO SONIDOS
SoundFile habla, notificacion, interferencia, cortocircuito;

//DECLARO CLASES OBJETOS
Conexion conexion;

void setup() {
  size(1500, 700);

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
}

void draw() {
  background(0);
  conexion.conexiones();
  conexion.pasoEstado();
}

void serialEvent(Serial myPort) {
  portStream = myPort.readString();
}
