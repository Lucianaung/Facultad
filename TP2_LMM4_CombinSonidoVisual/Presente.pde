class presente {
  int numLines = 100; // Número de líneas amorfas
  float angleOffset = 0.05; // Desplazamiento aleatorio máximo para cada ángulo

  void display() {
    background(0);

    float centerX = width / 2;
    float centerY = height / 2;

    drawAmorphousLines(centerX, centerY);
  }
  void drawAmorphousLines(float centerX, float centerY) {
    strokeWeight(3);
    strokeCap(ROUND);

    for (int i = 0; i < numLines; i++) {
      // Interpolar entre blanco, naranja desaturado y marrón
      float lerpAmount = map(i, 0, numLines, 0, 0.8); // Ajusta estos valores para cambiar el rango de color

      if (lerpAmount < 0.33) {
        // Blanco a naranja desaturado
        int brown = lerpColor(color(200), color(150, 200, 160), map(lerpAmount, 0, 0.33, 0, 1));
        stroke(brown, 150); // Color con transparencia
      } else if (lerpAmount < 0.66) {
        // Naranja desaturado a marrón
        int orange = lerpColor(color(100, 150, 160), color(100, 60, 40), map(lerpAmount, 0.33, 0.66, 0, 1));
        stroke(orange, 150); // Color con transparencia
      } else {
        // Marrón
        int white = color(50, 100, 40);
        stroke(white, 150); // Color con transparencia
      }

      float angle = random(TWO_PI);
      int index = int(map(i, 0, numLines, 0, spectrum.length));
      float spectrumValue = spectrum[index % spectrum.length];
      float lineLength = 100 + spectrumValue *40; // Ajustamos el valor de la longitud de la línea para que sea más visible

      float startX = centerX + cos(angle) * random(100);
      float startY = centerY + sin(angle) * random(100);

      // Desplazamiento aleatorio del ángulo
      float endAngle = angle + random(-angleOffset, angleOffset);

      float endX = startX + cos(endAngle) * lineLength;
      float endY = startY + sin(endAngle) * lineLength;

      // Dibujar línea
      line(startX, startY, endX, endY);
    }
  }
}
