import processing.serial.*;
import ddf.minim.*;
import ddf.minim.ugens.*;

Minim minim;
AudioOutput outG, outM, outA, outB;
Oscil waveG, waveM, waveA, waveB;
AudioPlayer fondoa, fondob, latido;

Serial myPort; // Objeto para el puerto serial
String val;    // Datos recibidos desde el puerto serial

boolean frequencyChangedG = false; // Bandera para indicar si se ha cambiado la frecuencia
boolean frequencyChangedM = false;
boolean frequencyChangedA = false;
boolean frequencyChangedB = false;

// FRECUENCIAS GRAVES
float[] freParG = {164.81, 196.00, 246.94, 293.66}; // E3, G3, B3, D4
float[] freImparG = {174.61, 220.00, 261.63}; // F3, A3, C4
int currentFreG = 0; // Índice para controlar la frecuencia actual de GRAVES

// FRECUENCIAS MEDIAS
float[] freParM = {261.63, 329.63, 392.00, 493.88}; // C4, E4, G4, B4
float[] freImparM = {293.66, 349.23, 440.00}; // D4, F4, A4
int currentFreM = 0; // Índice para controlar la frecuencia actual de MEDIAS

// FRECUENCIAS AGUDAS
float[] freParA = {523.25, 659.25, 783.99, 987.77}; // C5, E5, G5, B5
float[] freImparA = {587.33, 698.46, 880.00}; // D5, F5, A5
int currentFreA = 0; // Índice para controlar la frecuencia actual de AGUDAS

// FRECUENCIAS BASE
float[] freParB = {392.00, 493.88, 587.33, 698.46}; // G4, B4, D5, F5
float[] freImparB = {440.00, 523.25, 659.25}; // A4, C5, E5
int currentFreB = 0; // Índice para controlar la frecuencia actual de BASE

float freG, freM, freA, freB;
int beatAvg;
int bpm;
int boton;
float ampG, ampM, ampA, ampB;

float prevBeatAvgG = -1; // Almacenar el valor anterior de beatAvg para GRAVES
float prevBeatAvgM = -1; // Almacenar el valor anterior de beatAvg para MEDIAS
float prevBeatAvgA = -1; // Almacenar el valor anterior de beatAvg para AGUDAS
float prevBeatAvgB = -1; // Almacenar el valor anterior de beatAvg para BASE

void setup() {
  size(500, 500, P3D);
  strokeWeight(1);
  textSize(18);

  minim = new Minim(this);

  fondoa = minim.loadFile("estadoA.wav");
  fondoa.setGain(-10.0);

  fondob = minim.loadFile("fondoB.wav");
  fondob.setGain(-10.0);

  latido = minim.loadFile("latido.mp3");
  latido.setGain(-5.0);

  // use the getLineOut method of the Minim object to get an AudioOutput object
  outG = minim.getLineOut();
  outM = minim.getLineOut();
  outA = minim.getLineOut();
  outB = minim.getLineOut();

  waveG = new Oscil(freParG[currentFreG], 0.2, Waves.SINE ); // GRAVE 0.2
  waveG.patch(outG); // patch the Oscil to the output

  waveM = new Oscil(freParM[currentFreM], 0.08, Waves.SINE ); // MEDIA 0.08
  waveM.patch(outM);

  //waveA = new Oscil(freParA[currentFreA], 0.04, Waves.SINE ); // AGUDA 0.04
  //waveA.patch(outA); //waveA.patch(adsr).patch(outA);

  waveB = new Oscil(freParB[currentFreB], 0.092, Waves.SINE ); // BASE  0.092
  waveB.patch(outB);

  // Inicializar el puerto serial
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil('\n'); // Esperar hasta que se reciba un salto de línea
}

void draw() {
  background(0);

  text("freG: " + freParG[currentFreG], 20, 40);
  text("freM: " + freParM[currentFreM], 20, 140);
  text("freA: " + freParA[currentFreA], 20, 240);
  text("freB: " + freParB[currentFreB], 20, 340);

  drawWaveform(outG.left.toArray(), 50, color(255, 0, 0));   // waveG
  drawWaveform(outM.left.toArray(), 150, color(0, 255, 0));  // waveM
  drawWaveform(outA.left.toArray(), 250, color(0, 0, 255));  // waveA
  drawWaveform(outB.left.toArray(), 350, color(255, 255, 0)); // waveB
}

void drawWaveform(float[] buffer, float yOffset, int col) {
  stroke(col);
  for (int i = 0; i < buffer.length - 1; i++) {
    line(i, yOffset - buffer[i] * 50, i + 1, yOffset - buffer[i + 1] * 50);
  }
}

void serialEvent(Serial myPort) {
  val = myPort.readStringUntil('\n');
  val = trim(val); // Eliminar cualquier carácter de espacio en blanco
  //println(val);
  String[] vals = split(val, ',');   // Procesar las lecturas del sensor

  if (vals.length == 3) {
    boton = int(trim(vals[0]));  // Parse bpm
    bpm = int(trim(vals[1])); // Parse beatAvg
    beatAvg = int(trim(vals[2]));
    println("BOTON: " + boton + " - " + "BPM: " + bpm + " - " + "BPM%: " + beatAvg);

    if (val != null) {
      if (boton == 0) {  //-----------------BOTON NO ESTÁ PRESIONADO
        if (!fondoa.isPlaying()) {
          fondoa.loop();
          waveG.setAmplitude(0.0);
          waveM.setAmplitude(0.0);
          waveB.setAmplitude(0.0);
        }

        if (fondob.isPlaying() && latido.isPlaying()) {
          fondob.pause();
          latido.pause();
        }
      } else if (boton == 1) { //-----------BOTON ESTÁ PRESIONADO

        if (!fondob.isPlaying() && !latido.isPlaying()) {
          waveG.setAmplitude(0.2);
          waveM.setAmplitude(0.08);
          waveB.setAmplitude(0.092);
          fondob.loop();
          latido.loop();
        }

        if (fondoa.isPlaying()) {
          fondoa.pause();
        }

        // Verificar GRAVES
        if (bpm >= 20 && bpm <= 40) {
          if (bpm != prevBeatAvgG) { // Verificar si beatAvg ha cambiado
            // Cambiar la frecuencia
            if (bpm % 2 == 0) {
              currentFreG = (currentFreG + 1) % freParG.length;
              waveG.setFrequency(freParG[currentFreG]);
            } else {
              currentFreG = (currentFreG + 1) % freImparG.length;
              waveG.setFrequency(freImparG[currentFreG]);
            }
            prevBeatAvgG = bpm; // Actualizar el valor anterior
          }
        }

        // Verificar MEDIOS
        if (bpm >= 40 && bpm <= 80) {
          if (bpm != prevBeatAvgM) { // Verificar si beatAvg ha cambiado
            // Cambiar la frecuencia
            if (bpm % 2 == 0) {
              currentFreM = (currentFreM + 1) % freParM.length;
              waveM.setFrequency(freParM[currentFreM]);
            } else {
              currentFreM = (currentFreM + 1) % freImparM.length;
              waveM.setFrequency(freImparM[currentFreM]);
            }
            prevBeatAvgM = bpm; // Actualizar el valor anterior
          }
        }

        // Verificar AGUDOS
        //if (bpm >= 80 && bpm <= 100) {
        //  if (bpm != prevBeatAvgA) { // Verificar si beatAvg ha cambiado
        //    // Cambiar la frecuencia
        //    if (bpm % 2 == 0) {
        //      currentFreA = (currentFreA + 1) % freParA.length;
        //      waveA.setFrequency(freParA[currentFreA]);
        //    } else {
        //      currentFreA = (currentFreA + 1) % freImparA.length;
        //      waveA.setFrequency(freImparA[currentFreA]);
        //    }
        //    prevBeatAvgA = bpm; // Actualizar el valor anterior
        //  }
        //}

        // Verificar BASE
        if (bpm >= 80 && bpm <= 140) {
          if (bpm != prevBeatAvgB) {
            // Cambiar la frecuencia
            if (bpm % 2 == 0) {
              currentFreB = (currentFreB + 1) % freParB.length;
              waveB.setFrequency(freParB[currentFreB]);
            } else {
              currentFreB = (currentFreB + 1) % freImparB.length;
              waveB.setFrequency(freImparB[currentFreB]);
            }
            prevBeatAvgB = bpm; // Actualizar el valor anterior
          }
        }
      }
    }
  }
}

void stop() {
  // Always remember to close Minim when you're done with it
  outG.close();
  outM.close();
  outA.close();
  outB.close();
  minim.stop();
  super.stop();
}
