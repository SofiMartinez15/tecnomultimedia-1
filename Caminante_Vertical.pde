class Caminante3 {

  float x;
  float y;
  float dir, vel;
  float t;

  Caminante3() {
    x=0;
    y=20;
    dir= y;
    vel=4;
    t=6;
  }
  void dibujarLineasVerticales() {

    noStroke();
    fill(180);
    rect(x, y, t*3, t);
    rect(width-15, y, t*3, t);
  }
  void movimientoCamVertical() {
    float dy=vel/3*sin(dir);
    //cartesianas
    y=y+dy;
  }
}
