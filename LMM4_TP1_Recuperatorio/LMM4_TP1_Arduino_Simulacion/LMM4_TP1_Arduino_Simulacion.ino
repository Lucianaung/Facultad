//PIN DE CADA BOTON
const int buttonPin1 = 12;
const int buttonPin2 = 11;
const int buttonPin3 = 10;
const int buttonPin4 = 9;
const int buttonPin5 = 8;
const int buttonPin6 = 7;

//VARIABLES DE ESTADOS DE CADA BOTON, EN EL EJEMPLO VAN EN 0, DESPUES SE INVIERTE SI USAMOS LOS DE LAS PIRAMIDES POR EJ
int buttonState1 = 0;
int buttonState2 = 0;
int buttonState3 = 0;
int buttonState4 = 0;
int buttonState5 = 0;
int buttonState6 = 0;

String data; 

void setup() {
  Serial.begin(9600);
  //ACA SE REPETIRIAN LOS INPUT DE LOS DEMAS
  pinMode (buttonPin1, INPUT);
  pinMode (buttonPin2, INPUT);
  pinMode (buttonPin3, INPUT);
  pinMode (buttonPin4, INPUT);
  pinMode (buttonPin5, INPUT);
  pinMode (buttonPin6, INPUT);
  }

void loop() {

  //TAMBIEN SE REPITE CON LOS DEMAS
  buttonState1 = digitalRead(buttonPin1);
  buttonState2 = digitalRead(buttonPin2);
  buttonState3 = digitalRead(buttonPin3);
  buttonState4 = digitalRead(buttonPin4);
  buttonState5 = digitalRead(buttonPin5);
  buttonState6 = digitalRead(buttonPin6);
  data = normalizeData(buttonState1, buttonState2, buttonState3, buttonState4, buttonState5, buttonState6); //FALTA AGREGAR ESTADOS DE LOS OTROS BOTONES DENTRO DE DATA

  Serial.println(data);
  delay(20);

}

String normalizeData(int b1, int b2, int b3, int b4, int b5, int b6){ //AGREGAR B2,B3, ETC

  String B1string = String(b1); //S100000E
  String B2string = String(b2); //S010000E
  String B3string = String(b3); //S001000E
  String B4string = String(b4); //S000100E
  String B5string = String(b5); //S000010E
  String B6string = String(b6); //S000001E

/*S000E, S001E, S010E, S100*/ 
//SE AGREGAN DENTRO DE LOS STRING LAS VARIABLES STRING DE LOS DEMAS BOTONES
String ret = String("S") + B1string + B2string + B3string + B4string + B5string + B6string + String("E");
return ret;
}