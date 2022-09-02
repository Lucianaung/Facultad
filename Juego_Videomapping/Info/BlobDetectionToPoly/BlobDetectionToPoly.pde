import blobDetection.*;
PGraphics graf;
import fisica.*;
FWorld mundo;

BlobDetection theBlobDetection;
void setup() {
  size(1000, 600);
  Fisica.init(this);
  mundo = new FWorld();
  mundo.setEdges();
  graf = createGraphics(width, height);
  graf.beginDraw();
  graf.background(255);
  graf.endDraw();

  theBlobDetection = new BlobDetection(graf.width, graf.height);
}

void draw() {
  if (mousePressed) {
    dibujarLapiz();
  }
  image(graf, 0, 0);
  mundo.step();
  mundo.drawDebug();


  dibujarBlob();
}

void dibujarLapiz() {
  graf.beginDraw();
  graf.strokeWeight(10);
  graf.line(mouseX, mouseY, pmouseX, pmouseY);
  graf.endDraw();
}

void keyPressed() {
  if (key=='b') {
    for (int i=0; i<4; i++) {
      graf.filter(BLUR, 3);
    }
  } else if (key=='d') {
    theBlobDetection.setPosDiscrimination(false);
    theBlobDetection.setThreshold(0.38f);
    theBlobDetection.computeBlobs(graf.pixels);
  } else if (key=='l') {
    graf.beginDraw();
    graf.background(255);
    graf.endDraw();
  } else if (key=='p') {
    Blob b;
    EdgeVertex eA;
    for (int n=0; n<theBlobDetection.getBlobNb(); n++) {
      FPoly poly = new FPoly();
      b=theBlobDetection.getBlob(n);
      if (b!=null) {
        for (int m=0; m<b.getEdgeNb(); m+=10) {
          eA = b.getEdgeVertexA(m);
          if (eA !=null ) {
            poly.vertex(eA.x*width, eA.y*height);
          }
        }
      }
      mundo.add(poly);
    }
  }
}

void dibujarBlob() {
  Blob b;
  EdgeVertex eA, eB;

  noFill();
  stroke(255, 0, 0);
  for (int n=0; n<theBlobDetection.getBlobNb(); n++) {
    b=theBlobDetection.getBlob(n);
    if (b!=null) {
      for (int m=0; m<b.getEdgeNb(); m++) {
        eA = b.getEdgeVertexA(m);
        eB = b.getEdgeVertexB(m);
        if (eA !=null && eB !=null) {
          line(eA.x*width, eA.y*height, eB.x*width, eB.y*height);
        }
      }
    }
  }
}
