void jugar() {
  if (!pelota.isSleeping()) {
    detectar();
    mundo.add(pelota);
  }
  if (pelota.isSleeping()) {
    estado = "PERDER";
  }

  println("pelota durmiente: "+pelota.isSleeping());
}
