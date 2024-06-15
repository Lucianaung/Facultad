/*

 //ADSR adsr = new ADSR(0.1, 0.1, 0.5, 0.1);
 //LowPassFS lpf = new LowPassFS(200, 0.1f);
 //reverb = new Reverb(0.5, 0.5, 0.5);
 -------------------
 void mouseMoved() {
 if (keyCode == '1') {
 freG = map(mouseX, 0, width, 0.0, 1.0);
 waveG.setAmplitude(freG);
 }
 if (keyCode == '2') {
 freM = map(mouseX, 0, width, 0.0, 1.0);
 waveM.setAmplitude(freM);
 }
 if (keyCode == '3') {
 freA = map(mouseX, 0, width, 0.0, 1.0);
 waveA.setAmplitude(freA);
 }
 if (keyCode == '4') {
 freB = map(mouseX, 0, width, 0.0, 1.0);
 waveB.setAmplitude(freB);
 }
 }
 */
 
 /*import processing.serial.*;
import ddf.minim.Minim;
import ddf.minim.AudioPlayer;

Serial myPort;  // Create object from Serial class
String val;     // Data received from the serial port

Minim minim;
AudioPlayer[] notes = new AudioPlayer[88];
AudioPlayer fondo;

int beatAvg;
int bpm;

void setup() {
  size(400, 200);
  textSize(14);
  fill(0);

  minim = new Minim(this);

  for (int i = 0; i < notes.length; i++) {
    notes[i] = minim.loadFile(i + ".wav");
  }
  fondo = minim.loadFile("mFondo.wav");
  fondo.setGain(-20.0);
  fondo.loop();

  String portName = Serial.list()[0]; // Adjust the index here depending on your setup
  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil('\n');
}

void draw() {
  background(255);
  text("Sensor Data from Arduino:", 10, 30);

  if (val != null) {
    text("Control de repeticiones x segundo y volumen ----> BPM: " + bpm, 10, 60);
    text("Control de notas ----> BeatAvg: " + beatAvg, 10, 90);
    println("ENTRÓ");

    //Ensure the index is within the range of available notes
    if (beatAvg >= 1 && beatAvg < notes.length) {
      // Generate a random variation in speed
      float randomFactor = random(0.5, 2); // Random factor between 0.5 and 1.5
      float speed = map(bpm, 0, notes.length - 1, 0.1, 2.0) * randomFactor; // Apply random factor to speed
      frameRate(speed);

      // Set volume based on the value of bpm
      if (bpm > 50) {
        notes[beatAvg].setGain(-22.0);  // Lower volume for higher values
      } else if (bpm > 30){
        notes[beatAvg].setGain(-15.0);    // Higher volume for lower values
      } else if (bpm > 10){
        notes[beatAvg].setGain(-10.0);    // Higher volume for lower values
      } else {
        notes[beatAvg].setGain(-15.0);    // Higher volume for lower values
      }
      notes[beatAvg].rewind();
      notes[beatAvg].play();
    }
  } else {
    text("Waiting for data...", 10, 60);
  }
}

void serialEvent(Serial myPort) {
  val = myPort.readStringUntil('\n');
  val = trim(val);  // Remove any whitespace characters

  if (val != null) {
    String[] vals = split(val, ',');
    if (vals.length == 2) {
      bpm = int(trim(vals[0]));  // Parse bpm
      beatAvg = int(trim(vals[1])); // Parse beatAvg
    }
  }
}
*/
