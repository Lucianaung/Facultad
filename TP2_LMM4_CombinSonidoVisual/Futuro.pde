class futuro {
  float circleSize; // Tamaño inicial del círculo
  float circleX, circleY; // Posición del círculo
  float maxCircleSize = 300; // Tamaño máximo del círculo
  float minCircleSize = 200; // Tamaño mínimo del círculo
  float growSpeed = 2; // Velocidad de crecimiento del círculo

  float[] startX; // Posiciones iniciales X de las líneas
  float[] startY; // Posiciones iniciales Y de las líneas
  float[] frequencyOffsets; // Desplazamientos horizontales basados en la frecuencia
  float[] amplitudes; // Amplitud de las líneas
  color[] lineColors; // Colores de las líneas

  PImage backgroundImage; // Variable para almacenar la imagen de fondo

  futuro() {
    circleSize = minCircleSize; // Inicializa el tamaño del círculo como el mínimo
    circleX = width / 2; // Posición X centrada
    circleY = height / 2; // Posición Y centrada

    // Inicialización de las líneas onduladas centradas en la pantalla
    startX = new float[4];
    startY = new float[4];
    frequencyOffsets = new float[4];
    amplitudes = new float[4];
    lineColors = new color[4];

    float spacingX = width / 5.0; // Espaciado entre líneas
    float startYPos = height / 2; // Posición Y centrada en la mitad de la pantalla
    for (int i = 0; i < 4; i++) {
      startX[i] = (i + 1) * spacingX; // Posición inicial X de la línea
      startY[i] = startYPos; // Posición inicial Y de la línea centrada
      frequencyOffsets[i] = random(-50, 50); // Desplazamiento horizontal aleatorio inicial
      amplitudes[i] = 200; // Amplitud inicial de las líneas
      lineColors[i] = color(random(0, 255), random(0, 255), random(0, 255)); // Color aleatorio para cada línea
    }

    backgroundImage = loadImage("FONDO.png"); // Carga la imagen de fondo
  }

  void display() {
    background(255);
    image(backgroundImage, 0, 0, width, height);

    drawCircle();
    drawWavyLines();
  }

  void drawCircle() {
    float heartbeat = sin(frameCount * 0.05); // Valor sinusoidal para simular el latido
    circleSize = map(heartbeat, -1, 0.7, minCircleSize, maxCircleSize); // Mapea el tamaño según el latido

    // Dibuja el círculo en la posición especificada
    noStroke(); // Sin borde
    fill(255, 0, 0, 20); // Relleno rojo
    ellipse(circleX, circleY, circleSize, circleSize);
  }

  void drawWavyLines() {
    for (int i = 0; i < 4; i++) {
      float frequency;
      switch (i) {
      case 0:
        frequency = waveG.frequency.getLastValue();
        break; // Frecuencia para graves
      case 1:
        frequency = waveM.frequency.getLastValue();
        break; // Frecuencia para medias
      case 2:
        frequency = waveB.frequency.getLastValue();
        break; // Frecuencia para base
      default:
        frequency = 0;
        break;
      }

      // Calcula el desplazamiento horizontal en función de la frecuencia
      float offset = map(frequency, 100, 1000, -50, 50);
      frequencyOffsets[i] += (offset - frequencyOffsets[i]) * 0.1;

      // Calcula la amplitud en función de la frecuencia
      float amplitude = map(frequency, 100, 1000, 20, 200);
      amplitudes[i] += (amplitude - amplitudes[i]) * 0.1;

      // Desplaza la línea hacia la derecha (cambio de dirección)
      startX[i] += 1; // Incrementa startX[i] en lugar de restarlo

      // Si la línea sale del lado derecho, la reposiciona al lado izquierdo
      if (startX[i] > width) { // Cambia la condición de < 0 a > width
        startX[i] = 0; // Reposiciona la línea al inicio del lado izquierdo
        startY[i] = random(height / 2, height * 0.8); // Reposiciona la línea verticalmente aleatoriamente
        frequencyOffsets[i] = random(-50, 50); // Reinicia el desplazamiento horizontal aleatorio
        amplitudes[i] = 100; // Reinicia la amplitud inicial
        lineColors[i] = color(random(0, 255), random(0, 255), random(0, 255)); // Cambia el color aleatorio
      }

      // Dibuja la línea ondulada con un color vibrante constante
      drawWavyLine(startX[i], startY[i], frequencyOffsets[i], lineColors[i], amplitudes[i]);
    }
  }

  void drawWavyLine(float startX, float startY, float offset, color col, float amplitude) {
    noFill();
    strokeWeight(4);
    stroke(col);

    beginShape();
    float endX = startX + width; // Calcula la posición final X

    // Asegura que se dibuje hasta el borde derecho de la ventana
    for (float x = 0; x <= endX; x += 10) {
      float y = 300 + sin((x + offset) * 0.05) * amplitude;
      vertex(x, y);
    }
    endShape();
  }
}
