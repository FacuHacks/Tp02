class Rana {
  private PVector posicion;
  private PVector velocidad;
  private PImage imagen;
  private String ranaImagen = "rana.png";
  
  // Constructor
  public Rana() {
    imagen = loadImage(ranaImagen);
    imagen.resize(70,0);
    posicion = new PVector(width/2-25, height-80);
    velocidad = new PVector(0, 0);
  }
  
  
  // Método para mostrar la rana en su posición actual
  void display() {
    image(imagen, posicion.x, posicion.y);
  }
  
  // Método para mover la rana y controlarla
  void mover() {
    if (keyPressed) {
      if (keyCode == UP) {
        velocidad.y = -2; 
      } else if (keyCode == DOWN) {
        velocidad.y = 2;
      } else if (keyCode == LEFT) {
        velocidad.x = -2;
      } else if (keyCode == RIGHT) {
        velocidad.x = 2;
      }
    } else {
      velocidad.x = 0;
      velocidad.y = 0;
    }
    posicion.add(velocidad);
  }
}
