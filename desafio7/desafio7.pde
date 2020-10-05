int c = 120;
redondo[] o = new redondo[c];

void setup() {

  size ( 800, 600 );
  background ( 0 );

  for ( int i = 0; i < c; i++ ) {
    o[i] = new redondo ();
  }
}

void draw() {

  fill ( 255, 10 );
  rect ( 0, 0, width, height );
  for ( int i = 0; i < c; i++ ) {
    o[i].dibujar ();
    o[i].mover ();
    o[i].rebote ();
  }
}
