String estado;
int MaxImages = 26;
String[] textos = new String[76];
PFont Leo;
PImage [] images = new PImage[MaxImages];
float tamText, x, y;

void setup() {

  estado = "p1";
  size( 800, 600 );
  Leo = loadFont( "Monospaced.plain-48.vlw" );
  textFont( Leo );

  //declarar texto
  textos();

  for ( int i = 0; i < images.length; i++) {

    images[i] = loadImage( "foto_" + i + ".png");
  }
}

void draw() {

  //P1 Aventura: Inicio
  if ( estado.equals( "p1" )) {

    image( images[0], 0, 0 );

    textaventura( 0, 40, 100, 70 );

    textaventura( 1, 30, 150, 420 ); 

    //P2: Conoce la historia del crack argentino (subinicio)
  } else if ( estado.equals( "p2" )) {

    image( images[1], -100, 0, 900, 600 );

    noStroke();
    fill( 0, 150 );
    rect( 240, 350, 290, 40 );

    fill( 255 );
    textaventura( 2, 30, 250, 380 );


    fill( 255 );
    textaventura( 2, 30, 250, 380 );

    fill( 255 );
    textaventura( 3, 30, 50, 580 );

    fill( 255 );
    textaventura( 4, 30, 590, 580 );

    //P3 Pantalla Barcelona
  } else if ( estado.equals( "p3" )) {

    image( images[25], 0, 0 );

    fill( 0, 150 );
    rect( 40, 500, 740, 50 );

    fill( 255 );
    textaventura( 5, 30, 50, 530 );

    fill( 255 );
    textaventura( 6, 30, 50, 485 );

    //P4 Pantalla Argentina
  } else if ( estado.equals( "p4" )) {

    image( images[24], 0, 0 );
    fill( 0, 150 ); 
    rect( 40, 500, 740, 50 );

    fill( 255 );
    textaventura( 7, 30, 50, 535 );

    fill( 255 );
    textaventura( 8, 30, 50, 485 );


    //P5 Pantalla Partido vs Madrid
  } else if ( estado.equals( "p5" )) {

    image(images[2], 0, 0 );

    fill( 255 );
    textaventura( 9, 30, 110, 540 );

    //P6 Pantalla Elegi situacion de partido
  } else if ( estado.equals( "p6" )) {

    image( images[3], 0, 0 );

    fill( 255 );
    textaventura( 10, 30, 30, 100 );

    fill( 255 );
    textaventura( 11, 30, 30, 130 );

    fill( 255 );
    textaventura( 12, 30, 30, 350 );

    fill( 255 );
    textaventura( 13, 30, 30, 400 );

    fill( 255 );
    textaventura( 14, 30, 30, 250 );    

    //P7 Pantalla Tiro Libre Madrid
  } else if ( estado.equals( "p7" )) {

    image( images[4], 0, 0 );

    fill( 0, 150 );
    rect( 37, 30, 440, 40 );

    fill( 0, 150 );
    rect( 37, 90, 475, 40 );

    fill( 0, 150 );
    rect( 0, 527, 800, 30 );

    fill( 255 );
    textaventura( 15, 30, 50, 60 );

    fill( 255 );
    textaventura( 15, 30, 50, 120 ); 

    fill( 255 );
    textaventura( 16, 30, 15, 550 );

    fill( 255 );
    textaventura( 17, 30, 40, 20 );  

    //P8 Pantalla Jugada Madrid
  } else if ( estado.equals( "p8" )) {

    image( images[5], 0, 0 );

    fill( 0, 150 );
    rect( 37, 30, 615, 40 );

    fill( 0, 150 );
    rect( 37, 90, 465, 40 );

    fill( 0, 150 );
    rect( 0, 470, 800, 80 );

    fill( 255 );
    textaventura( 18, 30, 50, 60 );

    fill( 255 );
    textaventura( 19, 30, 50, 120 );

    fill( 255 );
    textaventura( 20, 30, 20, 500 );

    fill( 255 );
    textaventura( 21, 30, 45, 530 );  

    fill( 255 );
    textaventura( 22, 30, 40, 20 );  

    //P9 Pantalla Gol Tiro Libre Madrid
  } else if ( estado.equals( "p9" )) {

    image( images[6], 0, 0 );

    fill( 255 );
    textaventura( 23, 30, 20, 500 );

    fill( 255 );
    textaventura( 24, 30, 20, 530 );  

    fill( 255 );
    textaventura( 27, 30, 110, 560 );  

    //P10 Pantalla Afuera Tiro Libre Madrid
  } else if ( estado.equals( "p10" )) {

    image( images[7], 0, 0 );

    fill( 255 );
    textaventura( 25, 30, 35, 500 );  

    fill( 255 );
    textaventura( 26, 30, 40, 530 );  

    textaventura( 27, 30, 110, 560 );  

    //P11 Pantalla Derrota Partido vs Madrid
  } else if ( estado.equals( "p11" )) {

    image( images[10], 0, 0 );

    fill( 255 );
    textaventura( 28, 30, 35, 500 );  

    fill( 255 );
    textaventura( 29, 30, 40, 530 );

    fill( 255 );
    textaventura( 27, 30, 110, 560 );

    //P12 Pantalla Festejo Partido vs Madrid
  } else if ( estado.equals( "p12" )) {

    image( images[11], 0, 0 );

    fill( 255 );
    textaventura( 30, 30, 40, 30 );

    fill( 255 );
    textaventura( 32, 30, 50, 60 );

    fill( 255 );
    textaventura( 27, 30, 110, 90 );

    //P13 Pantalla Balon de Oro
  } else if ( estado.equals( "p13" )) {

    image( images[12], 0, 0 );

    fill( 255 );
    textaventura( 33, 30, 40, 500 );

    fill( 255 );
    textaventura( 34, 30, 15, 530 );

    fill( 255 );
    textaventura( 27, 30, 110, 560 );

    //P14 Pantalla Creditos
  } else if ( estado.equals( "p14" )) {

    image( images[23], 0, 0 );

    fill( 255 );
    textaventura( 35, 30, 300, 150 );

    fill( 255 );
    textaventura( 36, 30, 210, 200 );

    fill( 255 );
    textaventura( 37, 30, 200, 250 );

    fill( 255 );
    textaventura( 38, 30, 240, 300 );

    fill( 255 );
    textaventura( 39, 30, 270, 350 );

    fill( 255 );
    textaventura( 40, 30, 200, 400 );

    fill( 255 );
    textaventura( 41, 30, 100, 500 );

    fill( 255 );
    textaventura( 42, 30, 300, 450 );

    //P15 Pantalla Jugada Gol Madrid
  } else if ( estado.equals( "p15" )) {

    image( images[8], 0, 0 );

    fill( 255 );
    textaventura( 43, 30, 20, 500 );

    fill( 255 );
    textaventura( 44, 30, 20, 530 );

    fill( 255 );
    textaventura( 27, 30, 110, 560 );

    //P16 Pantalla Jugada Afuera Madrid
  } else if ( estado.equals( "p16" )) {

    image( images[9], 0, 0 );

    fill( 255 );
    textaventura( 45, 30, 20, 500 );

    fill( 255 );
    textaventura( 46, 30, 20, 530 );

    fill( 255 );
    textaventura( 27, 30, 110, 560 );

    //P17 Pantalla Festejo Jugada Madrid
  } else if ( estado.equals( "p17" )) {

    image( images[11], 0, 0 );

    fill( 255 );
    textaventura( 31, 30, 60, 30 );

    fill( 255 );
    textaventura( 47, 30, 30, 60 );

    fill( 255 );
    textaventura( 27, 30, 110, 90 );

    //P18 Pantalla Fracaso Jugada Madrid
  } else if ( estado.equals( "p18" )) {

    image( images[10], 0, 0 );

    fill( 255 );
    textaventura( 48, 30, 40, 500 );

    fill( 255 );
    textaventura( 49, 30, 20, 530 ); 

    fill( 255 );
    textaventura( 27, 30, 110, 560 );

    //P19 Pantalla Partido vs Brasil
  } else if ( estado.equals( "p19" )) {

    image( images[13], 0, 0 );

    fill( 0 );
    textaventura( 27, 30, 110, 540 );

    //P20 Pantalla Partido vs Brasil
  } else if ( estado.equals( "p20" )) {

    image( images[14], 0, 0);

    fill( 255 );
    textaventura( 10, 30, 30, 100 );

    fill( 255 );
    textaventura( 11, 30, 30, 130 );

    fill( 255 );
    textaventura( 50, 30, 30, 350 );

    fill( 255 );
    textaventura( 51, 30, 30, 400 );

    fill( 255 );
    textaventura( 14, 30, 30, 250 );

    //P21 Pantalla Penal vs Brasil
  } else if ( estado.equals( "p21" )) {

    image( images[15], 0, 0 );

    fill( 0, 150 );
    rect( 37, 30, 410, 40 );

    fill( 0, 150 );
    rect( 37, 90, 445, 40 );

    fill( 0, 150 );
    rect( 0, 527, 800, 30 );

    fill( 0, 150 );
    rect( 235, 557, 360, 35 );

    fill( 255 );
    textaventura( 52, 30, 50, 60 );

    fill( 255 );
    textaventura( 53, 30, 50, 120 );

    fill( 255 );
    textaventura( 54, 30, 15, 550 );

    fill( 255 );
    textaventura( 55, 30, 250, 580 );

    fill( 255 );
    textaventura( 22, 30, 40, 20 );

    //P22 Pantalla Jugada vs Brasil
  } else if ( estado.equals( "p22" )) {

    image( images[16], 0, 0 );

    fill( 0, 150 );
    rect( 37, 30, 665, 40 );

    fill( 0, 150 );
    rect( 37, 90, 435, 40 );

    fill( 0, 150 );
    rect( 0, 527, 800, 30 );

    fill( 0, 150 );
    rect( 140, 557, 535, 35 );

    fill( 255 );
    textaventura( 56, 30, 60, 60 );

    fill( 255 );
    textaventura( 57, 30, 50, 120 );

    fill( 255 );
    textaventura( 58, 30, 40, 550 );

    fill( 255 );
    textaventura( 59, 30, 150, 580 );

    fill( 255 );
    textaventura( 17, 30, 40, 20 );

    //P23 Pantalla Penal Gol vs Brasil
  } else if ( estado.equals( "p23" )) {

    image( images[17], 0, 0 );

    fill( 255 );
    textaventura( 60, 30, 30, 30 );

    fill( 255 );
    textaventura( 61, 30, 50, 60 );

    fill( 255 );
    textaventura( 27, 30, 110, 90 );

    //P24 Pantalla Penal Afuera vs Brasil
  } else if ( estado.equals( "p24" )) {

    image( images[18], 0, 0 );

    fill( 255 );
    textaventura( 62, 30, 30, 500 );

    fill( 255 );
    textaventura( 63, 30, 135, 530 );

    fill( 255 );
    textaventura( 27, 30, 110, 560 );

    //P25 Pantalla Festejo penal vs Brasil
  } else if ( estado.equals( "p25" )) {

    image( images[22], 0, 0 );

    fill( 255 );
    textaventura( 64, 30, 50, 500 );

    fill( 255 );
    textaventura( 65, 30, 20, 530 );

    fill( 255 );
    textaventura( 27, 30, 110, 560 );

    //P26 Pantalla Fracaso penal vs Brasil
  } else if ( estado.equals( "p26" )) {

    image( images[21], 0, 0 );

    fill( 255 );
    textaventura( 66, 30, 20, 500 );

    fill( 255 );
    textaventura( 67, 30, 125, 530 );

    fill( 255 );
    textaventura( 27, 30, 110, 560 );

    //P27 Pantalla Jugada Gol vs Brasil
  } else if ( estado.equals( "p27" )) {

    image( images[19], 0, 0 );

    fill( 255 );
    textaventura( 68, 30, 30, 30 );

    fill( 255 );
    textaventura( 69, 30, 30, 60 );

    fill( 255 );
    textaventura( 27, 30, 110, 90 );

    //P28 Pantalla Jugada Afuera vs Brasil
  } else if ( estado.equals( "p28" )) {

    image( images[20], 0, 0 );

    fill( 255 );
    textaventura( 70, 30, 40, 30 );

    fill( 255 );
    textaventura( 71, 30, 30, 60 );

    fill( 255 );
    textaventura( 27, 30, 110, 90 );

    //P29 Pantalla Festejo Jugada vs Brasil
  } else if ( estado.equals( "p29" )) {

    image( images[22], 0, 0 );

    fill( 255 );
    textaventura( 72, 30, 50, 500 );

    fill( 255 );
    textaventura( 73, 30, 120, 530 );

    fill( 255 );
    textaventura( 27, 30, 110, 560 );

    //P30 Pantalla Fracaso Jugada vs Brasil
  } else if ( estado.equals( "p30" )) {

    image( images[21], 0, 0 );

    fill( 255 );
    textaventura( 74, 30, 10, 500 );

    fill( 255 );
    textaventura( 75, 30, 40, 530 );

    fill( 255 );
    textaventura( 27, 30, 110, 560 );
  }
}

void mousePressed() {

  clickMouse();
}

void keyPressed() {

  boton();
}

void mouseMoved() {

  println( mouseX + "MouseX" );
  println( mouseY + "MouseY" );
}
