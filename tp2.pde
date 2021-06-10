PImage fondo1, titulo, fondo2, fondo3, fondo4, fondo5, fondo6, fondo7;
PFont texto;
String harry, ron, hermione, dumbledore, director, musica;
int phy, pry,phx,pdx,pdy,pmy;
int segundos;
float op,op1,op2,op3,op4,op5,op6,op7,op8,op9,op10,op11,op12,op13;
float ptx,pty;

void setup() {
  size(600,400);
  background(0);
  phy= 400;
  pdx=255;
  pdy=400;
  pmy=100;
  ptx=random(50,380);
  pty=random(80,350);
  imageMode(CENTER);
  //pantalla 1
      fondo1 = loadImage("fondo1.jpg");
      titulo = loadImage("titulo.png");
  //pantalla 2
      fondo2 = loadImage("fondo2.jpg");  // AdobeArabic-Regular-48
      texto = loadFont("AdobeArabic-Regular-48.vlw");
      textFont (texto,15);
      harry = "DANIEL RADCLIFFE";
  //pantalla 3
      fondo3 = loadImage("fondo3.jpg");
      ron = "RUPERT GRINT";
  //pantalla 4
      fondo4 = loadImage("fondo4.jpg");
      hermione = "EMMA WATSON";
  //pantalla 5
      fondo5 = loadImage("fondo5.jpg");
      dumbledore = "With:\nRICHARD HARRIS";
  //pantalla 6
      fondo6 = loadImage("fondo6.jpg");
      director = "Directed by:\nCHRIS COLUMBUS";
  //pantalla 7
      fondo7 = loadImage("fondo7.jpg");
      musica = "Music by:\nJOHN WILLIAMS";
  }
  
  
  void draw(){
  println(mouseX,mouseY);
  //contador
    fill (255,0,255);
    text(segundos,50,50);
    if(frameCount%60==0){
    segundos++;}
    println(segundos);
  
//PANTALLA 1 - TÍTULO
  noTint();
  image (fondo1, width/2, height/2, 700, 450);
  tint (255,op);
  op ++;
  image (titulo,width/2, height/2, 400, 200);
  //println(frameCount);
  
  //PANTALLA 2 - HARRY
  
  if(segundos>5){
    tint(255,op1);
    op1+=3;
    image (fondo2,width/2,height/2,600,400);
     }
  if (segundos>=5 && op1>255){
    op2=map(phy,400,90,0,255);
    fill(255,op2);
    op2+=2;
    text(harry,350,phy);
    phy-=2;
  }
  if (op2>=255 || segundos>9 ){
    phy=90;
  } 
  
  //PANTALLA 3 - RON
  
  if (phy<=90 && segundos>=11){
    tint(255,op3);
    op3+=4;
    image (fondo3,width/2,height/2,600,400);
  }
  if (phy<=90 && op3>255){
    op4=map(pry,0,200,0,255);
    fill(255,op4);
    op4+=2;
    text(ron,50,pry);
    pry+=2;
  }
  if (op4>=255){
  pry=200;
  }
  
  //PANTALLA 4 - HERMIONE
  
   if (pry>=200 && segundos>=15){
    tint(255,op5);
    op5+=4;
    image (fondo4,width/2,height/2,600,400);
  }
  if (pry>=200 && op5>255){
    op6=map(phx,0,50,0,255);
    fill(255,op6);
    op6++;
    text(hermione,phx,pty);
    phx++;
  }
  if (op6>=255){
  phx=50;
  }
  
  //PANTALLA 5 - DUMBLEDORE
  
  if (phx>=50 && segundos>=20){
    tint(255,op7);
    op7+=4;
    image (fondo5,width/2,height/2,600,500);
  }
  if (phx>=50 && op7>255){
    op8=map(pdx,255,50,0,255);
    fill(255,op8);
    op8+=2;
    text(dumbledore,pdx,pty);
    pdx-=2;
  }
  if (op8>=255){
  pdx=50;
  }
  
  //PANTALLA 6 - DIRECTOR
  
   if (segundos>=25){
    tint(255,op9);
    op9+=4;
    image (fondo6,width/2,height/2,650,400);
  }
  if (pdx>=50 && op9>255){
    op10=map(pdy,400,280,0,255);
    fill(255,op10);
    op10+=2;
    text(director,ptx,pdy);
    pdy-=2;
  }
  if (op10>=255){
  pdy=280;
  }
  
  //PANTALLA 7 - MUSICA
  
  if (segundos>=29){
    tint(255,op11);
    op11+=4;
    image (fondo7,width/2,height/2,600,400);
  }
  if (pdy>=280 && op11>255){
    op12=map(pmy,100,200,0,255);
    fill(255,op12);
    op12+=2;
    textAlign(CENTER);
    text(musica,300,pmy);
    pmy+=2;
  }
  if (op12>=255){
  pmy=200;
  }
  if (segundos>=33){
    pmy=0;}
    
  if (pmy<=0 || segundos>33){
    fill(0,op13);
    op13+=3;
    rect(0,0,600,400);
  }
}


void mousePressed () {
  segundos=0;
  op=0;
  op1=0;
  op2=0;
  op3=0;
  op4=0;
  op5=0;
  op6=0;
  op7=0;
  op8=0;
  op9=0;
  op10=0;
  op11=0;
  op12=0;
  op13=0;
}
