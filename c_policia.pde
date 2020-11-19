//Gorra de policia
class Policia {
  PImage poli;
  int cant = 10;
  float[] x = new float [cant];
  float[] y = new float [cant];
  float[] v = new float [cant];
  float[] t = new float [cant];
  int vidas = 3;
  Aventura aventura;

  Policia (Aventura aventura) {
    this.aventura = aventura;
    poli = loadImage ("policia.png");
    for (int i = 0; i < cant; i++ ) {
      x[i] = random( -1000, 100 );
      y[i] = random( 70, 600 );
      t[i] = 80;
      v[i] = 8;
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
      if ( x[i] > width +t[i] ) {
        x[i] = random( -1000, 0 );
        y[i] = random( 70, 600);
      }
    }
  }
  //si se clickea ""mal""
  void disparo() {
    for (int i = 0; i < cant; i++ ) {
      float distancia = dist (mouseX, mouseY, x[i], y[i]);
      if (distancia <= t[i]) {
        background(0);
        textSize(50);
        fill (255);
        text ("Mal!", width/2, height/2);
        vidas--;
        v[i]++;
      }
    }
  }

  void dibujar() {
    for (int i = 0; i < cant; i++ ) image( poli, x[i], y[i], t[i], t[i] );

    textSize (20);
    fill (0);
    text ("Vidas: "+vidas, 650, 30);
  }
  //si se clickea la gorra de policia tres veces ====== estado perdiste
  void perdiste () {
    if (vidas <= 0) {
      aventura.perder();
      aventura.j.a.puntos = 0; 
      vidas = 3;
    }
  }
}
