class Dado extends GameObject {
  int valor;
  boolean mostrado; 
  Dado(float x, float y) {
    super(x, y);
    this.valor = 0; 
    this.mostrado = false;
  }
  
  void display() {
  }
}
