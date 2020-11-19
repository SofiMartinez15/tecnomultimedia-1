//bolsa con dinero
class Dinero {
  int cant = 10;
  Aventura aventura;
  float[] x = new float [cant];
  float[] y = new float [cant];
  float[] v = new float [cant];
  float[] t = new float [cant];
  int puntos = 0;
  PImage dinero;

  Dinero (Aventura p) {
    aventura = p;
    dinero = loadImage ("dinero.png");
    for (int i = 0; i < cant; i++ ) {
      x[i] = random( -1000, 100 );
      y[i] = random( 70, 600 );
      v[i] = 10;
      t[i] = 80;
    }
  }
  //unido
  void completo () {
    mover();
    reciclar();
    dibujar();
  }

  void mover () {
    for (int i = 0; i < cant; i++ ) x[i] += v[i];
  }

  void reciclar() {
    for (int i = 0; i < cant; i++ ) {
      if ( x[i] > width + t[i]) {
        x[i] = random( -1000, 0 );
        y[i] = random( 70, 600 );
      }
    }
  }
  //si se clickea el dinero ""bien""
  void disparo() {
    for (int i = 0; i < cant; i++ ) {
      float distancia = dist (mouseX, mouseY, x[i], y[i]);
      if (distancia <= t[i]) {
        fill (0, 255, 0);
        text ("Bien!", width/2, height/2);
        puntos++;
        v[i]++;
      }
    }
  }
  //se dibuja
  void dibujar() {
    for (int i = 0; i < cant; i++ ) 
      image(dinero, x[i], y[i], t[i], t[i]);

    fill (255);
    noStroke ();
    rect (0, 0, 800, 50);
    textSize (20);
    fill (0);
    text ("Puntos: "+puntos, 50, 30);
  }
  //si se clickea la bolsa de dinero tres veces ====== estado ganaste
  void ganaste() {
    if (puntos >= 3) 
    {
      aventura.ganar();
      aventura.j.c.vidas = 3;
      puntos = 0;
    }
  }
}
