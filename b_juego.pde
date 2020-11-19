Dinero a; 
class Juego {
  Dinero a; 
  Policia c;       
  float x = width/2;
  float y = height/2;

  Juego(Aventura aventura) {

    a = new Dinero(aventura);
    c = new Policia(aventura);
  }    

  void play() {
    a.completo();
    c.completo();

    a.ganaste();
    c.perdiste();
  }

  void click () {
    a.disparo();
    c.disparo();
  }
}
