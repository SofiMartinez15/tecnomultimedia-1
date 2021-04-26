class Caminante2 {

  float x;
  float y;
  float dir, vel;
  float t;

  Caminante2() {
    x=0;
    y=200;
    dir= x;
    vel=4;
    t=6;
  }
  void dibujarLineasDeLaIzq(){
for (int i=0; i<cant; i++) { 
    noStroke();
    fill(0);
    rect(x,y+i*20,t, t);//para separar las lineas
    rect(x,y-300+i*20,t, t);
}
  }
  void movimientoCam2() {
    float dx=vel/2*cos(dir);
    //cartesianas
    x=x+dx;
  }
}
