#include <Wire.h>
#include "MAX30105.h"
#include "heartRate.h"
#include <ezButton.h>

MAX30105 particleSensor;

const byte RATE_SIZE = 4;  // Aumentar esto para más promediado. 4 es un buen valor.
byte rates[RATE_SIZE];     // Array de frecuencias cardíacas
byte rateSpot = 0;
long lastBeat = 0;  // Momento en que ocurrió el último latido

float beatsPerMinute;
int beatAvg;

long lastIRValue = 0;
long noFingerThreshold = 50000;  // Umbral para detectar ausencia de dedo
unsigned long lastValidReadingTime = 0;
unsigned long noFingerTimeout = 3000;  // Tiempo de espera de 3 segundos para ausencia de dedo

//const int buttonPin = 2;  // Pin del botón
//int buttonState = 0;      // Estado del botón

ezButton limitSwitch(2);  // create ezButton object that attach to pin 7

void setup() {
  Serial.begin(9600);
  Serial.println("Inicializando...");

  limitSwitch.setDebounceTime(50);  // set debounce time to 50 milliseconds

  // Configurar el pin del botón
  // pinMode(buttonPin, INPUT_PULLUP);  // Configurar el pin del botón como entrada con resistencia pull-up interna

  // Inicializar el sensor
  if (!particleSensor.begin(Wire, I2C_SPEED_FAST)) {
    Serial.println("No se encontró el MAX30102. Por favor, verifica el cableado/alimentación.");
    while (1)
      ;
  }
  Serial.println("Coloca tu dedo índice en el sensor con una presión constante.");

  particleSensor.setup();                     // Configurar el sensor con los ajustes predeterminados
  particleSensor.setPulseAmplitudeRed(0x0A);  // Encender el LED rojo en bajo para indicar que el sensor está funcionando
  particleSensor.setPulseAmplitudeGreen(0);   // Apagar el LED verde
}

void loop() {
  //buttonState = digitalRead(buttonPin);  // Leer el estado del botón
  limitSwitch.loop();  // MUST call the loop() function first
  if (limitSwitch.isPressed()) {
  //Serial.println("The limit switch: UNTOUCHED -> TOUCHED");
}
if (limitSwitch.isReleased()) {
//Serial.println("The limit switch: TOUCHED -> UNTOUCHED");
}
int state = limitSwitch.getState();

if (state == LOW) {  // El botón está presionado buttonState == HIGH
  long irValue = particleSensor.getIR();

  if (checkForBeat(irValue) == true) {
    // ¡Se detectó un latido!
    long delta = millis() - lastBeat;
    lastBeat = millis();

    beatsPerMinute = 60 / (delta / 1000.0);

    if (beatsPerMinute < 255 && beatsPerMinute > 20) {
      rates[rateSpot++] = (byte)beatsPerMinute;  // Almacenar esta lectura en el array
      rateSpot %= RATE_SIZE;                     // Envolver la variable

      // Tomar el promedio de las lecturas
      beatAvg = 0;
      for (byte x = 0; x < RATE_SIZE; x++)
        beatAvg += rates[x];
      beatAvg /= RATE_SIZE;
    }

    // Reiniciar el temporizador de ausencia de dedo
    lastValidReadingTime = millis();
  }

  if (irValue > noFingerThreshold) {
    lastValidReadingTime = millis();  // Actualizar el tiempo de la última lectura válida
  }

  // Comprobar si no se ha detectado ninguna lectura válida durante el período de tiempo de espera
  if (millis() - lastValidReadingTime > noFingerTimeout) {
    beatAvg = 0;
    beatsPerMinute = 0;
  }

  // Enviar datos a Processing

  Serial.print("1");  // Estado del botón presionado
  Serial.print(",");
  Serial.print(beatsPerMinute);
  Serial.print(",");
  Serial.println(beatAvg);


  delay(10);
} else {
  beatAvg = 0;
  beatsPerMinute = 0;
  Serial.print("0");  // Estado del botón presionado
  Serial.print(",");
  Serial.print(beatsPerMinute);
  Serial.print(",");
  Serial.println(beatAvg);
  delay(10);
}
}
