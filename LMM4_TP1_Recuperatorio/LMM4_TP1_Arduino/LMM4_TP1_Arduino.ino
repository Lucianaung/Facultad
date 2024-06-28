//PIN DE CADA BOTON
const int buttonPin1 = 1; //narizL *
const int buttonPin2 = 2; //narizC
const int buttonPin3 = 3; //ojoDerL *
const int buttonPin4 = 4; //ojoDerC
const int buttonPin5 = 5; //ojoIzqL *
const int buttonPin6 = 6; //ojoIzqC
const int buttonPin7 = 7; //bocaL *
const int buttonPin8 = 8; //bocaC *
const int buttonPin9 = 9; //oidoIzqL
const int buttonPin10 = 10; //oidoIzqC
const int buttonPin11 = 11; //oidoDerL
const int buttonPin12 = 12; //OidoDerC
//VARIABLES DE ESTADOS DE CADA BOTON, EN EL EJEMPLO VAN EN 0, DESPUES SE INVIERTE SI USAMOS LOS DE LAS PIRAMIDES POR EJ
int buttonState1 = 1;
int buttonState2 = 1;
int buttonState3 = 1;
int buttonState4 = 1;
int buttonState5 = 1;
int buttonState6 = 1;
int buttonState7 = 1;
int buttonState8 = 1;
int buttonState9 = 1;
int buttonState10 = 1;
int buttonState11 = 1;
int buttonState12 = 1;

String data;

void setup() {
  Serial.begin(9600);
  //ACA SE REPETIRIAN LOS INPUT DE LOS DEMAS
  pinMode(buttonPin1, INPUT);
  pinMode(buttonPin2, INPUT);
  pinMode(buttonPin3, INPUT);
  pinMode(buttonPin4, INPUT);
  pinMode(buttonPin5, INPUT);
  pinMode(buttonPin6, INPUT);
  pinMode(buttonPin7, INPUT);
  pinMode(buttonPin8, INPUT);
  pinMode(buttonPin9, INPUT);
  pinMode(buttonPin10, INPUT);
  pinMode(buttonPin11, INPUT);
  pinMode(buttonPin12, INPUT);
}

void loop() {

  //TAMBIEN SE REPITE CON LOS DEMAS
  buttonState1 = digitalRead(buttonPin1);
  buttonState2 = digitalRead(buttonPin2);
  buttonState3 = digitalRead(buttonPin3);
  buttonState4 = digitalRead(buttonPin4);
  buttonState5 = digitalRead(buttonPin5);
  buttonState6 = digitalRead(buttonPin6);
  buttonState7 = digitalRead(buttonPin7);
  buttonState8 = digitalRead(buttonPin8);
  buttonState9 = digitalRead(buttonPin9);
  buttonState10 = digitalRead(buttonPin10);
  buttonState11 = digitalRead(buttonPin11);
  buttonState12 = digitalRead(buttonPin12);

  data = normalizeData(buttonState1, buttonState2, buttonState3, buttonState4, buttonState5, buttonState6, buttonState7, buttonState8, buttonState9, buttonState10, buttonState11, buttonState12);  //FALTA AGREGAR ESTADOS DE LOS OTROS BOTONES DENTRO DE DATA
  
  Serial.println(data);
  
  ////////////////////////////////////////////////////////COMENTAR DESPUES PARA PROCESSING
  /*
  if (digitalRead(buttonPin1) == 0) {
    Serial.println("boton 1 presionado");
  }
  if (digitalRead(buttonPin2) == 0) {
    Serial.println("boton 2 presionado");
  }
  if (digitalRead(buttonPin3) == 0) {
    Serial.println("boton 3 presionado");
  }
  if (digitalRead(buttonPin4) == 0) {
    Serial.println("boton 4 presionado");
  }
  if (digitalRead(buttonPin5) == 0) {
    Serial.println("boton 5 presionado");
  }
  if (digitalRead(buttonPin6) == 0) {
    Serial.println("boton 6 presionado");
  }
  if (digitalRead(buttonPin7) == 0) {
    Serial.println("boton 7 presionado");
  }
  if (digitalRead(buttonPin8) == 0) {
    Serial.println("boton 8 presionado");
  }
  if (digitalRead(buttonPin9) == 0) {
    Serial.println("boton 9 presionado");
  }
  if (digitalRead(buttonPin10) == 0) {
    Serial.println("boton 10 presionado");
  }
  if (digitalRead(buttonPin11) == 0) {
    Serial.println("boton 11 presionado");
  }
  if (digitalRead(buttonPin12) == 0) {
    Serial.println("boton 12 presionado");
  */
  delay(20);
}

String normalizeData(int b1, int b2, int b3, int b4, int b5, int b6, int b7, int b8, int b9, int b10, int b11, int b12) {  //AGREGAR B2,B3, ETC

  String B1string = String(b1);
  String B2string = String(b2);
  String B3string = String(b3);
  String B4string = String(b4);
  String B5string = String(b5);
  String B6string = String(b6);
  String B7string = String(b7);
  String B8string = String(b8);
  String B9string = String(b9);
  String B10string = String(b10);
  String B11string = String(b11);
  String B12string = String(b12);

  /* S00E, S01E */

  //SE AGREGAN DENTRO DE LOS STRING LAS VARIABLES STRING DE LOS DEMAS BOTONES
  String ret = String("S") + B1string + B2string + B3string + B4string + B5string + B6string + B7string + B8string + B9string + B10string + B11string + B12string +String("E");
  return ret;
}