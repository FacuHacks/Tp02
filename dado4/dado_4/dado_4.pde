boolean dibujarImagen = false;
int posicionAleatoria;
ArrayList<Integer> valoresDados = new ArrayList<Integer>(); // Corrección en la declaración del ArrayList

void setup() {
  size(600, 300);
  textSize(50);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(#A0FBFF);
  stroke(0);
  fill(#3A9BA5);
  float centroX = height / 1.4;
  float centroY = width / 8.0;
  float lado = 150;
  float esquinaX = centroX - lado / 50;
  float esquinaY = centroY - lado / 50;
  rect(esquinaX, esquinaY, lado, lado);

  if (dibujarImagen) {
    float posX1 = 0, posY1 = 0, posX2 = 0, posY2 = 0, posX3 = 0, posY3 = 0, posX4 = 0, posY4 = 0, posX5 = 0, posY5 = 0, posX6 = 0, posY6 = 0, posX7 = 0, posY7 = 0;

    if (posicionAleatoria == 0) {
      posX1 = esquinaX + lado / 2;
      posY1 = esquinaY + lado / 2;
      generarTexto1("Uno", width - 80, 50);
      println("Dado 1");
    } else if (posicionAleatoria == 1) {
      posX4 = esquinaX + lado / 5.2;
      posY4 = esquinaY + lado / 4.4;
      posX3 = esquinaX + lado / 1.2;
      posY3 = esquinaY + lado / 1.3;
      generarTexto1("Dos", width - 80, 50);
      println("Dado 2");
    } else if (posicionAleatoria == 2) {
      posX4 = esquinaX + lado / 5.2;
      posY4 = esquinaY + lado / 4.4;
      posX1 = esquinaX + lado / 2.0;
      posY1 = esquinaY + lado / 2.0;
      posX3 = esquinaX + lado / 1.2;
      posY3 = esquinaY + lado / 1.3;
      generarTexto1("Tres", width - 80, 50);
      println("Dado 3");
    } else if (posicionAleatoria == 3) {
      posX4 = esquinaX + lado / 5.2;
      posY4 = esquinaY + lado / 4.4;
      posX3 = esquinaX + lado / 1.2;
      posY3 = esquinaY + lado / 1.3;
      posX5 = esquinaX + lado / 5.2;
      posY5 = esquinaY + lado / 1.3;
      posX6 = esquinaX + lado / 1.2;
      posY6 = esquinaY + lado / 4.2;
      generarTexto1("Cuatro", width - 80, 50);
      println("Dado 4");
    } else if (posicionAleatoria == 4) {
      posX4 = esquinaX + lado / 5.2;
      posY4 = esquinaY + lado / 4.4;
      posX3 = esquinaX + lado / 1.2;
      posY3 = esquinaY + lado / 1.3;
      posX5 = esquinaX + lado / 5.2;
      posY5 = esquinaY + lado / 1.3;
      posX6 = esquinaX + lado / 1.2;
      posY6 = esquinaY + lado / 4.2;
      posX1 = esquinaX + lado / 2;
      posY1 = esquinaY + lado / 2;
      generarTexto1("Cinco", width - 80, 50);
      println("Dado 5");
    } else if (posicionAleatoria == 5) {
      posX2 = esquinaX + lado / 5.2;
      posY2 = esquinaY + lado / 2.0;
      posX7 = esquinaX + lado / 1.2;
      posY7 = esquinaY + lado / 2.0;
      posX4 = esquinaX + lado / 5.2;
      posY4 = esquinaY + lado / 4.4;
      posX6 = esquinaX + lado / 1.2;
      posY6 = esquinaY + lado / 4.2;
      posX5 = esquinaX + lado / 5.2;
      posY5 = esquinaY + lado / 1.3;
      posX3 = esquinaX + lado / 1.2;
      posY3 = esquinaY + lado / 1.3;
      generarTexto1("Seis", width - 80, 50);
      println("Dado 6");
    }

    // Dibujar los círculos en las posiciones calculadas
    stroke(0);
    fill(0);
    if (dentroDelCuadrado(posX1, posY1, esquinaX, esquinaY, lado)) ellipse(posX1, posY1, 25, 25);
    if (dentroDelCuadrado(posX2, posY2, esquinaX, esquinaY, lado)) ellipse(posX2, posY2, 25, 25);
    if (dentroDelCuadrado(posX3, posY3, esquinaX, esquinaY, lado)) ellipse(posX3, posY3, 25, 25);
    if (dentroDelCuadrado(posX4, posY4, esquinaX, esquinaY, lado)) ellipse(posX4, posY4, 25, 25);
    if (dentroDelCuadrado(posX5, posY5, esquinaX, esquinaY, lado)) ellipse(posX5, posY5, 25, 25);
    if (dentroDelCuadrado(posX6, posY6, esquinaX, esquinaY, lado)) ellipse(posX6, posY6, 25, 25);
    if (dentroDelCuadrado(posX7, posY7, esquinaX, esquinaY, lado)) ellipse(posX7, posY7, 25, 25);
  }
}

void keyPressed() {
  if (key == ' ') {
    posicionAleatoria = int(random(6));
    valoresDados.add(posicionAleatoria + 1); // Se agrega el valor del dado al ArrayList
    dibujarImagen = true;
  } else if (key == 'd') {
    dibujarDados();
  }
}

boolean dentroDelCuadrado(float x, float y, float esquinaX, float esquinaY, float lado) {
  return x >= esquinaX && x <= esquinaX + lado && y >= esquinaY && y <= esquinaY + lado;
}

// Función para generar el texto en la posición específica
void generarTexto1(String texto, float x, float y) {
  fill(0);
  text(texto, x, y);
}

void dibujarDados() {
  println("Dados obtenidos:");
  for (int i = 0; i < valoresDados.size(); i++) {
    print(valoresDados.get(i) + " ");
    if ((i + 1) % 4 == 0)
      println();
  }
}
