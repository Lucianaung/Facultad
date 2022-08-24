class Dibujos{
  Fbox cajas;
  
  Dibujos(float w_, float h_){
  cajas = new FBox(w_, h_);
  }
  
  
  void inicializar (float x_, float y_){
  cajas.setPosiion(x,y);
  cajas.setName();
  }
}
