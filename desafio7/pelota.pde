class redondo {

  float x, y, t;
  float vx = 4;

  redondo() {

    x = random( width );
    y = random( height );
  }

  void mover() {
    x = x + vx;
  }
  void rebote() {
    if ( x > ( width-t/2 )) {   

      vx = -vx;
    }

    if ( x < t/2 ) { 

      vx = -vx;
    }
  }


  void dibujar() {

    noStroke();
    fill ( 0 );
    circle ( x, y, 100 );
    fill ( 0, 0, 255 );
    circle ( x, y, 90 );
    fill ( 255, 255, 0 );
    circle ( x, y, 55 );
  }
}
