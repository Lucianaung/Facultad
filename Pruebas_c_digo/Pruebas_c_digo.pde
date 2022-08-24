import fisica.*;
FWorld mundo;


void setup() {
  size (800, 600);
  background (85,244,170);

  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges(color(85,244,170));
  
  Dibujos dibujo1 = Dibujos ();
}

void draw(){

}
