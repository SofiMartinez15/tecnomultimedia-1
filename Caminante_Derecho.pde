class Caminante {
  float x;
  float y;
  float dir, vel;
  float t;

  Caminante() {
    x=width;
    y= 20;
    dir= x;
    vel=4;
    t=6;
  }
  void dibujarLineasDeLaDerecha() {
for (int i=0; i<cant; i++) { 
    noStroke();
    fill(180);
    rect(x, y+i*15, t, t);
}
  }
  void movimientoCam3() {
    float dx=vel/2*cos(dir);
    //cartesianas
    x=x+dx;
  }
}
