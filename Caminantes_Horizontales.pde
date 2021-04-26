class Caminante {
  float x;
  float y;
  float dx;
   float dy;
  float t;

  Caminante(float x_,float y_, float dx_,float dy_) {
    x=x_;
    y=y_;
    dx=dx_;
    
dy=dy_;;    t=6;
  }
  void dibujarLineas() {
     
    x+=dx;
  
 for( int i=0; i<4; i++) { 
    noStroke();
    fill(220);
    rect(x, y+i*15, t, t);

 
  
  }
}
}
