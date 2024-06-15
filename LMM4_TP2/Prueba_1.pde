/*
import processing.serial.*;
import ddf.minim.*;
import ddf.minim.ugens.*;
import ddf.minim.AudioPlayer;

Minim minim;
AudioOutput outG, outM, outA, outB;
Oscil waveG, waveM, waveA, waveB;
AudioPlayer fondo;
ControlSonido controlSonido;

Serial myPort; // Objeto para el puerto serial
String val; // Datos recibidos desde el puerto serial

boolean frequencyChangedG = false; // Bandera para indicar si se ha cambiado la frecuencia
boolean frequencyChangedM = false;
boolean frequencyChangedA = false;
boolean frequencyChangedB = false;

float freG, freM, freA, freB;
int beatAvg;
float bpm;

// FRECUENCIAS GRAVES
float[] freParG = {164.81, 196.00, 246.94, 293.66}; // E3, G3, B3, D4
float[] freImparG = {174.61, 220.00, 261.63}; // F3, A3, C4
int currentFreG = 0; // Índice para controlar la frecuencia actual de GRAVES

// FRECUENCIAS GRAVES
float[] freParM = {261.63, 329.63, 392.00, 493.88}; // C4, E4, G4, B4
float[] freImparM = {293.66, 349.23, 440.00}; // D4, F4, A4
int currentFreM = 0; // Índice para controlar la frecuencia actual de MEDIAS

// FRECUENCIAS GRAVES
float[] freParA = {523.25, 659.25, 783.99, 987.77}; // C5, E5, G5, B5
float[] freImparA = {587.33, 698.46, 880.00}; // D5, F5, A5
int currentFreA = 0; // Índice para controlar la frecuencia actual de AGUDAS

// FRECUENCIAS GRAVES
float[] freParB = {392.00, 493.88, 587.33, 698.46}; // G4, B4, D5, F5
float[] freImparB = {440.00, 523.25, 659.25}; // A4, C5, E5
int currentFreB = 0; // Índice para controlar la frecuencia actual de BASE


void setup() {
  size(500, 500, P3D);
  strokeWeight(1);
  textSize(18);

  minim = new Minim(this);
  controlSonido = new ControlSonido();

  fondo = minim.loadFile("mFondo.wav");
  fondo.setGain(-20.0);
  fondo.loop();

  outG = minim.getLineOut();
  outM = minim.getLineOut();
  outA = minim.getLineOut();
  outB = minim.getLineOut();

  waveG = new Oscil(freParG[currentFreG], 0.2, Waves.SINE ); // GRAVE
  waveG.patch(outG); // patch the Oscil to the output

  waveM = new Oscil(freParM[currentFreM], 0.08, Waves.SINE ); // MEDIA
  waveM.patch(outM);

  waveA = new Oscil(freParA[currentFreA], 0.04, Waves.SINE ); // AGUDA
  waveA.patch(outA); //waveA.patch(adsr).patch(outA);

  //waveB = new Oscil(freParB[currentFreB], 0.092, Waves.SINE ); // BASE
  //waveB.patch(outB);

  // Inicializar el puerto serial
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil('\n'); // Esperar hasta que se reciba un salto de línea
}

void draw() {
  background(0);
  controlSonido.dibujarSonido();
}

//-----------------------------------------------------------------------

void serialEvent(Serial myPort) {
  val = myPort.readStringUntil('\n');
  val = trim(val); // Eliminar cualquier carácter de espacio en blanco

  if (val != null) {
    String[] vals = split(val, ',');
    if (vals.length == 2) {
      bpm = float(trim(vals[0]));  // Parse bpm
      beatAvg = int(trim(vals[1])); // Parse beatAvg
      println("BPM: " + bpm + " " + "BPM%: " + beatAvg);

      // Control GRAVES
      if (bpm >= 20 && bpm <= 40) {
        if (!frequencyChangedG) {
          // Cambiar la frecuencia una sola vez si no ha cambiado
          if (bpm % 2 == 0) {
            currentFreG = (currentFreG + 1) % freParG.length;
            waveG.setFrequency(freParG[currentFreG]);
          } else {
            currentFreG = (currentFreG + 1) % freImparG.length;
            waveG.setFrequency(freImparG[currentFreG]);
          }
          frequencyChangedG = true; // Establecer la bandera en true para indicar cambio
        }
      } else {
        frequencyChangedG = false; // Reiniciar la bandera si el valor está fuera del rango
      }

      // Control MEDIOS
      if (bpm >= 40 && bpm <= 80) {
        if (!frequencyChangedM) {
          // Cambiar la frecuencia una sola vez si no ha cambiado
          if (bpm % 2 == 0) {
            currentFreM = (currentFreM + 1) % freParM.length;
            waveM.setFrequency(freParM[currentFreM]);
          } else {
            currentFreM = (currentFreM + 1) % freImparM.length;
            waveM.setFrequency(freImparM[currentFreM]);
          }
          frequencyChangedM = true; // Establecer la bandera en true para indicar cambio
        }
      } else {
        frequencyChangedM = false; // Reiniciar la bandera si el valor está fuera del rango
      }

      // Control AGUDOS
      if (bpm >= 80 && bpm <= 140) {
        if (!frequencyChangedA) {
          // Cambiar la frecuencia una sola vez si no ha cambiado
          if (bpm % 2 == 0) {
            currentFreA = (currentFreA + 1) % freParA.length;
            waveA.setFrequency(freParA[currentFreA]);
          } else {
            currentFreA = (currentFreA + 1) % freImparA.length;
            waveA.setFrequency(freImparA[currentFreA]);
          }
          frequencyChangedA = true; // Establecer la bandera en true para indicar cambio
        }
      } else {
        frequencyChangedA = false; // Reiniciar la bandera si el valor está fuera del rango
      }
    }
  }
}

void stop() {
  outG.close();
  outM.close();
  outA.close();
  outB.close();
  minim.stop();
  super.stop();
}

*/
