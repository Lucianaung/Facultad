import processing.video.*;

import processing.serial.*;
import gifAnimation.*;


Serial myPort;
String portStream;

Gif codigo, interferencia, mouse;
Conexion conexion;

Movie video;

void setup() {
  size(600, 600);

  String portName = Serial.list()[0];
  myPort = new Serial (this, portName, 9600);
  myPort.bufferUntil('\n');

  conexion = new Conexion();

  codigo = new Gif (this, "codigo.gif");
  interferencia = new Gif (this, "interferencia.gif");
  mouse = new Gif (this, "mouse.gif");

  video = new Movie(this, "Caras_1.mov");
  video.loop();
}

void draw() {
  background(255);
  image (video, width/2, height/2, width, height);

  conexion.conexiones();
  conexion.pasoEstado();
}

void movieEvent(Movie m) {
  m.read();
}

void serialEvent(Serial myPort) {
  portStream = myPort.readString();
}
