Dado dado; 
HUD hud;
boolean dibujarImagen = false;
int posicionAleatoria;
int[] valoresDados = new int[5];
boolean[] dadoMostrado = new boolean[6];

void setup() {
  size(600, 300);
  textSize(50);
  textAlign(CENTER, CENTER);
  dado = new Dado(width / 1.4, height / 8);
hud = new HUD(0, 0);
}

void draw() {
  background(#5E80D3);
  stroke(#03196C);
  fill(#FF7708);
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
      if (!dadoMostrado[0]) {
        dadoMostrado[0] = true;
      }
    } else if (posicionAleatoria == 1) {
      posX4 = esquinaX + lado / 5.2;
      posY4 = esquinaY + lado / 4.4;
      posX3 = esquinaX + lado / 1.2;
      posY3 = esquinaY + lado / 1.3;
      generarTexto1("Dos", width - 80, 50);
      if (!dadoMostrado[1]) {
        dadoMostrado[1] = true;
      }
    } else if (posicionAleatoria == 2) {
      posX4 = esquinaX + lado / 5.2;
      posY4 = esquinaY + lado / 4.4;
      posX1 = esquinaX + lado / 2.0;
      posY1 = esquinaY + lado / 2.0;
      posX3 = esquinaX + lado / 1.2;
      posY3 = esquinaY + lado / 1.3;
      generarTexto1("Tres", width - 80, 50);
      if (!dadoMostrado[2]) {
        dadoMostrado[2] = true;
      }
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
      if (!dadoMostrado[3]) {
        dadoMostrado[3] = true;
      }
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
      if (!dadoMostrado[4]) {
        dadoMostrado[4] = true;
      }
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
      if (!dadoMostrado[5]) {
        dadoMostrado[5] = true;
      }
    }

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
    agregarValorDado(posicionAleatoria + 1);
    dibujarImagen = true;
  } else if (key == 'm') { 
    dibujarDados(); // M de mostrar valores
    reiniciarDadoMostrado();
  } else if (key == 'b') {
    borrarLista();
  }
}

boolean dentroDelCuadrado(float x, float y, float esquinaX, float esquinaY, float lado) {
  return x >= esquinaX && x <= esquinaX + lado && y >= esquinaY && y <= esquinaY + lado;
}

// Función para generar el texto en la posición específica
void generarTexto1(String texto, float x, float y) {
  fill(#1B2A64);
  text(texto, x, y);
}

void dibujarDados() {
  println("Últimos valores obtenidos:");
  int startIndex = max(valoresDados.length - 5, 0); //Muestra hasta 10 :)
  for (int i = startIndex; i < valoresDados.length; i++) {
    println(valoresDados[i]);
  }
}

public void agregarValorDado(int valor) {
  for (int i = valoresDados.length - 1; i > 0; i--) {
    valoresDados[i] = valoresDados[i - 1];
  }
  valoresDados[0] = valor;
}

void reiniciarDadoMostrado() {
  for (int i = 0; i < dadoMostrado.length; i++) {
    dadoMostrado[i] = false;
  }
}

void borrarLista() {
  println("Lista borrada.");
  for (int i = 0; i < dadoMostrado.length; i++) {
    dadoMostrado[i] = false;
  }
  for (int i = 0; i < valoresDados.length; i++) {
    valoresDados[i] = 0;
  }
}
