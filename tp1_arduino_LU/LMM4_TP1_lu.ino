//PIN DE CADA BOTON
const int buttonPin1 = 2;
const int buttonPin2 = 10;
const int buttonPin3 = 11;
const int buttonPin4 = 12;

//VARIABLES DE ESTADOS DE CADA BOTON, EN EL EJEMPLO VAN EN 0, DESPUES SE INVIERTE SI USAMOS LOS DE LAS PIRAMIDES POR EJ
int buttonState1 = 0;
int buttonState2 = 0;
int buttonState3 = 0;
int buttonState4 = 0;

String data; 

void setup() {
  Serial.begin(9600);
  //ACA SE REPETIRIAN LOS INPUT DE LOS DEMAS
  pinMode (buttonPin1, INPUT);
  pinMode (buttonPin2, INPUT);
  pinMode (buttonPin3, INPUT);
  pinMode (buttonPin4, INPUT);
  }

void loop() {

  //TAMBIEN SE REPITE CON LOS DEMAS
  buttonState1 = digitalRead(buttonPin1);
  buttonState2 = digitalRead(buttonPin2);
  buttonState3 = digitalRead(buttonPin3);
  buttonState4 = digitalRead(buttonPin4);
  data = normalizeData(buttonState1, buttonState2, buttonState3, buttonState4); //FALTA AGREGAR ESTADOS DE LOS OTROS BOTONES DENTRO DE DATA

  Serial.println(data);

  delay(20);

}

String normalizeData(int b1, int b2, int b3, int b4){ //AGREGAR B2,B3, ETC

  String B1string = String(b1); //S1000E
  String B2string = String(b2); //S0100E
  String B3string = String(b3); //S0010E
  String B4string = String(b4); //S0001E

/*S000E, S001E, S010E, S100*/ 
//SE AGREGAN DENTRO DE LOS STRING LAS VARIABLES STRING DE LOS DEMAS BOTONES
String ret = String("S") + B1string + B2string + B3string + B4string + String("E");
return ret;
}
