class FondoDeLineas {
  float x, y;
  float dir, vel;
  float t;

  FondoDeLineas() {
    x=0;
    y= 200;
    dir= x;
    vel=4;
    t=350;
  }

  void dibujarFondoDeLineas() {
    //float r=map(x, 0, width, 255,100);
    //float g=map(x, 0, width, 255,13);
    //float b=map(x, 0, width, 255,252);
    noStroke();
    fill(250, 226, 3);
    rect(x, y, t-343, t-125);
  }


  void movimientoDeFondoDeLineas() {
    float dx=vel/2*cos(dir);
    //cartesianas
    x=x+dx;
  }
}
