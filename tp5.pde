Jugador jugador1, jugador2;
Pelota pelota;
boolean ganador;
int puntajeMaximo;
PImage caraM, caraSR, cancha;
PFont Letra;

void setup() {
  size( 800, 400 );

  caraM = loadImage( "cara messi.png" );
  caraSR = loadImage( "cara sergio ramos.png" );
  cancha = loadImage( "cancha.png" );
  Letra = loadFont( "Monospaced.plain-48.vlw" );
  textFont( Letra );

  jugador1 = new Jugador( 1 ); 
  jugador2 = new Jugador( 2 ); 

  pelota = new Pelota( 1 ); 
  ganador = false;

  puntajeMaximo = 3;
}

void draw() {
  image( cancha, 0, -100 );
  textSize(30);
  text( jugador1.getPuntos(), width/2 - 60, 40 );
  text( jugador2.getPuntos(), width/2 + 30, 40 );
  image( caraM, 270, 0, 80, 80 );
  image( caraSR, 450, 0, 60, 70 );

  if ( ganador == false ) {
    strokeWeight( 2 );
    stroke( 255 );

    for ( int y = 0; y < height; y+= 10 ) {
      line( width/2, y, width/2, y+5 );
    }

    pelota.mostrar();
    pelota.mover();
  }

  jugador1.mostrar();
  jugador1.mover();
  pelota.validarReboteJugador1(jugador1.getPosicion());

  jugador2.mostrar();
  jugador2.mover();
  pelota.validarReboteJugador2( jugador2.getPosicion() );

  pelota.validarReboteParedes();
  validarPuntos();
  validarGanador();
}

void validarPuntos() {
  PVector posicionPelota = pelota.getPosicion();

  if ( posicionPelota.x > width && jugador1.getPuntos() <= puntajeMaximo ) {
    jugador1.setPuntos( 1 );
    pelota = new Pelota( -1 );
  } else if ( posicionPelota.x < 0 && jugador2.getPuntos() <= puntajeMaximo ) { 
    jugador2.setPuntos( 1 );
    pelota = new Pelota( 1 );
  } else if ( keyPressed && ganador == true ) {
    setup();
  }
}

void validarGanador() {

  if ( jugador1.getPuntos() == puntajeMaximo ) {
    text( "Barcelona ha ganado el partido", 140, height/2 );
    textSize( 20 );
    text( "Presione cualquier tecla para volver a jugar", 140, height/2 + 35 );
    ganador = true;
  } else if ( jugador2.getPuntos() == puntajeMaximo ) {
    text( "Real Madrid ha ganado el partido", 130, height/2 );
    textSize( 20 );
    text( "Presione cualquier tecla para volver a jugar", 140, height/2 + 35 );
    ganador = true;
  }
}

void mouseMoved() {

  println( mouseX + "MouseX" );
  println( mouseY + "MouseY" );
}
