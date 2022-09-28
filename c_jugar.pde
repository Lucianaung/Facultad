void jugar() {
  if (!pelota.isSleeping()) {
    //blur
    for (int i=0; i<4; i++) {
      dibujos.filter(BLUR, 4);
    }
    //blob
    theBlobDetection.setPosDiscrimination(false);
    theBlobDetection.setThreshold(0.60f); //0.38f--> revisar con el pizarrón, es qué tanto gris recibe
    theBlobDetection.computeBlobs(dibujos.pixels);
    //poly
    Blob b;
    EdgeVertex eA;
    for (int n = 0; n < theBlobDetection.getBlobNb(); n++) {
      poly = new FPoly(); //FPoly
      poly.setStatic(true);
      poly.setGrabbable(false);
      poly.setName("lineas");
      b = theBlobDetection.getBlob(n);
      if (b!=null) {
        for (int m = 0; m < b.getEdgeNb(); m += 20) { //--> simplifica la forma
          eA = b.getEdgeVertexA(m);
          if (eA !=null ) {
            poly.vertex(eA.x*width, eA.y*height);
          }
        }
        mundo.add(poly);
      }
    }
    dibujos.beginDraw();
    dibujos.background(fondo);
    dibujos.endDraw();

    mundo.add(pelota);
  }  if (pelota.isSleeping()) {
    estado = "PERDER";
  }
  
println("pelota durmiente: "+pelota.isSleeping());
}
