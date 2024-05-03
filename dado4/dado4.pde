
float posicionDado6 = int(5.2, 2.0 + 5.2, 4.4 + 5.2, 1.3 + 1.2, 1.3 + 1.2, 1.3 + 1.2, 4.2 + 1.2, 2); //dado con los 6 puntos
//float posicionDado2 = int(5.2, 2.0 + 1.2, 1.3); //dado de 2 puntos
float posicionDado3 = int(5.2, 4.4 + 2, 2, + 1.2, 1.3); //dado de 3 puntos
float posicionDado4 = int(5.2, 4.4 + 1.2, 1.3 + 5.2, 1.3 + 1.2, 4.2); //dado de 4 puntos
float posicionDado5 = int(5.2, 4.4 + 5.2, 1.3 + 1.2, 1.3 + 1.2, 4.2 + 2, 2); //dado de 5 puntos
//float posicionDado1 = int(2, 2); //dado de 1 punto 

void setup() {
  size(600, 300);
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
  float centroCirculoX1 = esquinaX + lado / 5.2; // izqu del medio 6 (2)
  float centroCirculoX2 = esquinaX + lado / 5.2; //para el 2,3,4,5,6 iz de arriba (4)
  float centroCirculoX3 = esquinaX + lado / 5.2; // iszqu de abajo 4,5,6 (5)
  float centroCirculoX4 = esquinaX + lado / 1.2; //derecha de abajo 2,3,4,5.6 (3)
  float centroCirculoX5 = esquinaX + lado / 1.2; //derecha de arriba  4,5,6 (6)
  float centroCirculoX6 = esquinaX + lado / 1.2; //derecha del medio 6 (7) 
  float centroCirculoXDado1 = esquinaX + lado / 2; //circulo del medio 1,3,5 (1)
  
  float centroCirculoY1 = esquinaY + lado / 2.0; // izqui del medio 6 (2)
  float centroCirculoY2 = esquinaY + lado / 4.4;//para el 2,3,4,6 iz de arriba
  float centroCirculoY3 = esquinaY + lado / 1.3; //izqui de abajo 4,5,6
  float centroCirculoY4 = esquinaY + lado / 1.3; //derecha de abajo 2,3,4,5,6 
  float centroCirculoY5 = esquinaY + lado / 4.2;//derecha de arriba 4,5,6
  float centroCirculoY6 = esquinaY + lado / 2; //Derecha del medio 6
  float centroCirculoYDado1 = esquinaY + lado / 2; // circulo del medio 1,3,5
  stroke(0);
  fill(0);
  ellipse(centroCirculoX1, centroCirculoY1, 25, 25);// izqu del medio 6
  ellipse(centroCirculoX2, centroCirculoY2, 25, 25);//para el 2,3,4,6 iz de arriba
  ellipse(centroCirculoX3, centroCirculoY3, 25, 25);//para el 4,5,6 iz de abajo
  ellipse(centroCirculoX4, centroCirculoY4, 25, 25); //Derecha de abajo 2,3,4,5,6
  ellipse(centroCirculoX5, centroCirculoY5, 25, 25);//derecha de arriba 4,5,6
  ellipse(centroCirculoX6, centroCirculoY6, 25, 25); // Derecha del medio 6
  ellipse(centroCirculoXDado1, centroCirculoYDado1, 25, 25); //circulo del medio
  

  if (key == ' ') {
    dibujarImagen = !dibujarImagen;
  }else if (posicionDado1 == 0) {
    posX = centroCirculoXDado1 = esquinaX + lado / 5.2;
    posY = esquinaYDado1 = esquinaY + lado / 2;
    ellipse(5.2, 2);
  }
  }
if (dibujarImagen) {
  float centroCirculoX1 = esquinaX + lado / 5.2; // izqu del medio 6 (1)
   float centroCirculoY1 = esquinaY + lado / 2.0; // izqui del medio 6
    ellipse(centroCirculoX1, centroCirculoY1, 25, 25);// izqu del medio 6
    
}
