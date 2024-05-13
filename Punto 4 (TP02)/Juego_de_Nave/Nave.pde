class Nave extends GameObject implements IDisplayable, IMoveable, IController{
  
  public Nave(PVector posicion){
    super(posicion);
  }
 public void display(){
 }
 public void mover(){
 }
 public void readCommand(){
 }
 
 public void disparar(Bala[] balas){
   PVector posNewBala = new PVector(this.posicion.x,this.posicion.y);
   balas[0] = new Bala(posNewBala);
   balas[1] = new Bala(posNewBala);
   balas[2] = new Bala(posNewBala);
   balas[3] = new Bala(posNewBala);
   balas[4] = new Bala(posNewBala);
   balas[5] = new Bala(posNewBala);
   balas[6] = new Bala(posNewBala);
   balas[7] = new Bala(posNewBala);
   balas[8] = new Bala(posNewBala);
   balas[9] = new Bala(posNewBala);
 }
}
