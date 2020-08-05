String estado;
//int posY;
String t1, t2, t3, t4, t5, t6, t7, t8, t9;
PFont Leo;
PImage Aventura, Camino, vsMadrid, elegiMadrid, tirolibreM, jugadaM, goltiroM, nogoltiroM, goljugadaM, nogoljugadaM, fracasoM, festejoM, balonoro, vsBrasil; 
PImage elegiBrasil, penalB, jugadaB, golpenalB, nogolpenalB, goljugadaB, nogoljugadaB, fracasoB, festejoB, creditos, previaB, previaM;

void setup() {
  estado = "p1";
  size( 800, 600 );
  Leo = loadFont( "Monospaced.plain-48.vlw" );
  textFont( Leo );
  Aventura = loadImage( "inicio.png" );
  Camino = loadImage( "subinicio.png" );
  vsMadrid = loadImage( "madrid.png" );
  elegiMadrid = loadImage( "elegi barca.png" );
  tirolibreM = loadImage( "madrid tiro libre.png" );
  jugadaM = loadImage( "madrid jugada.png" );
  goltiroM = loadImage( "gol madrid tiro libre.png" );
  nogoltiroM = loadImage( "madrid erra gol tiro libre.png" );
  goljugadaM = loadImage( "gol madrid jugada.png" );
  nogoljugadaM = loadImage( "madrid erra gol jugada.png" );
  fracasoM = loadImage( "fracaso barca.png" );
  festejoM = loadImage( "festejo madrid.png" );
  balonoro = loadImage( "balon de oro.png" );
  vsBrasil = loadImage( "brasil.png" );
  elegiBrasil = loadImage( "elegi argentina.png" );
  penalB = loadImage( "brasil penal.png" );
  jugadaB = loadImage( "brasil jugada.png" );
  golpenalB = loadImage( "brasil gol penal.png" );
  nogolpenalB = loadImage( "brasil erra penal.png" );
  goljugadaB = loadImage( "brasil gol jugada.png" );
  nogoljugadaB = loadImage( "brasil erra jugada.png" );
  fracasoB = loadImage( "fracaso brasil.png" );
  festejoB = loadImage( "festejo brasil.png" );
  creditos = loadImage( "creditos.png" );
  previaB = loadImage( "previaB.png" );
  previaM = loadImage( "previaM.png" );
}

void draw() {

  //P1 Aventura: Inicio

  if ( estado.equals( "p1" )) {

    image( Aventura, 0, 0 );

    t1 = "Aventura de Lionel Messi";
    textSize( 40 );
    text( t1, 100, 70 );

    t2 = "Toca la pelota para comenzar";
    textSize( 30 );
    text( t2, 150, 420 );

    //P2: Conoce la historia del crack argentino (subinicio)
  } else if ( estado.equals( "p2" )) {

    image( Camino, -100, 0, 900, 600 );

    /*noStroke();
     fill( 0, 150 );
     rect( 150, 305, 450, 50 );*/

    noStroke();
    fill( 0, 150 );
    rect( 240, 350, 290, 40 );

    /*t5 = "Conoce mi gran historia";
     textSize( 30 );
     fill( 255 );
     text( t5, 170, 340 );*/

    t7 = "Elegí el camino";
    textSize( 30 );
    fill( 255 );
    text( t7, 250, 380 );

    t8 = "Barcelona";
    textSize( 30 );
    fill( 255 );
    text( t8, 50, 580 );

    t9 = "Argentina";
    textSize( 30 );
    fill( 255 );
    text( t9, 590, 580 );

    //P3 Pantalla Barcelona
  } else if ( estado.equals( "p3" )) {

    image( previaM, 0, 0 );
    fill( 0, 150 ); 
    rect( 40, 500, 740, 50 );

    t1 = "Presiona barra espaciadora para comenzar";
    textSize( 30 );
    fill( 255 );
    text( t1, 50, 535 );
    
    t2 = "-Estamos obligador a ganar este partido";
    fill( 255 );
    text( t2, 50, 485 );

    //P4 Pantalla Argentina
  } else if ( estado.equals( "p4" )) {

    image( previaB, 0, 0 );
    fill( 0, 150 ); 
    rect( 40, 500, 740, 50 );

    t1 = "Presiona barra espaciadora para comenzar";
    textSize( 30 );
    fill( 255 );
    text( t1, 50, 535 );
    
    t2 = "-Tenemos un partido muy duro por delante";
    fill( 255 );
    text( t2, 50, 485 );

    //P5 Pantalla Partido vs Madrid
  } else if ( estado.equals( "p5" )) {

    image(vsMadrid, 0, 0 );

    t1 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t1, 110, 540 );

    //P6 Pantalla Elegi situacion de partido
  } else if ( estado.equals( "p6" )) {

    image( elegiMadrid, 0, 0 );

    t1 = "Se me presentan dos jugadas";
    textSize( 30 );
    fill( 255 );
    text( t1, 30, 100 );

    t2 = "en el partido";
    textSize( 30 );
    fill( 255 );
    text( t2, 30, 130 );

    t3 = "-Tiro libre a favor";
    textSize( 30 );
    fill( 255 );
    text( t3, 30, 350 );

    t4 = "-Jugada de gol";
    textSize( 30 );
    fill( 255 );
    text( t4, 30, 400 );

    t5 = "Selecciona una oportunidad";
    fill( 255 );
    text( t5, 30, 250 );

    //P7 Pantalla Tiro Libre Madrid
  } else if ( estado.equals( "p7" )) {

    image( tirolibreM, 0, 0 );

    fill( 0, 150 );
    rect( 37, 30, 440, 40 );

    fill( 0, 150 );
    rect( 37, 90, 475, 40 );

    fill( 0, 150 );
    rect( 0, 527, 800, 30 );

    t1 = "Elige el angulo derecho";
    textSize( 30 );
    fill( 255 );
    text( t1, 50, 60 );

    t2 = "Elige el angulo izquierdo";
    textSize( 30 );
    fill( 255 );
    text( t2, 50, 120 );

    t3 = "El partido va 1-1, ultima chance para ganar.";
    textSize( 30 );
    fill( 255 );
    text( t3, 15, 550 );

    //P8 Pantalla Jugada Madrid
  } else if ( estado.equals( "p8" )) {

    image( jugadaM, 0, 0 );

    fill( 0, 150 );
    rect( 37, 30, 615, 40 );

    fill( 0, 150 );
    rect( 37, 90, 465, 40 );

    fill( 0, 150 );
    rect( 0, 470, 800, 80 );

    t1 = "Messi se pasa a tres, dispara y..";
    textSize( 30 );
    fill( 255 );
    text( t1, 50, 60 );

    t2 = "Messi le pega de lejos..";
    textSize( 30 );
    fill( 255 );
    text( t2, 50, 120 );

    t3 = "El Barca pierde 2-1, chance de Messi para";
    textSize( 30 );
    fill( 255 );
    text( t3, 20, 500 );

    t4 = "empatar e ilusionarse con la victoria.";
    textSize( 30 );
    fill( 255 );
    text( t4, 45, 530 );

    //P9 Pantalla Gol Tiro Libre Madrid
  } else if ( estado.equals( "p9" )) {

    image( goltiroM, 0, 0 );

    t1 = "GOLAZO DE MESSI, LA PUSO COMO CON LA MANO.";
    textSize( 30 );
    fill ( 255 );
    text( t1, 20, 500 );

    t2 = "GANA 2-1 Y EL PARTIDO ES DE LOS CULES.";
    textSize( 30 );
    fill( 255 );
    text( t2, 20, 530 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t3, 110, 560 );

    //P10 Pantalla Afuera Tiro Libre Madrid
  } else if ( estado.equals( "p10" )) {

    image( nogoltiroM, 0, 0 );

    t1 = "AFUERA. Muy lejos el tiro del argentino,";
    textSize( 30 );
    fill ( 255 );
    text( t1, 35, 500 );

    t2 = "el partido sigue 1-1 y esto se termina.";
    textSize( 30 );
    fill( 255 );
    text( t2, 40, 530 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t3, 110, 560 );

    //P11 Pantalla Derrota Partido vs Madrid
  } else if ( estado.equals( "p11" )) {

    image( fracasoM, 0, 0 );

    t1 = "Duro empate del Barcelona, sigue estando";
    textSize( 30 );
    fill( 255 );
    text( t1, 35, 500 );

    t2 = "muy lejos del puntero, que es el Madrid.";
    textSize( 30 );
    fill( 255 );
    text( t2, 40, 530 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t3, 110, 560 );

    //P12 Pantalla Festejo Partido vs Madrid
  } else if ( estado.equals( "p12" )) {

    image( festejoM, 0, 0 );

    t1 = "INCREIBLE VICTORIA CON GOLAZO DE MESSI,";
    textSize( 30 );
    fill( 255 );
    text( t1, 40, 30 );

    t2 = "EL BARCA PUEDE SER CAMPEON DE LA LIGA";
    textSize( 30 );
    fill( 255 );
    text( t2, 50, 60 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t3, 110, 90 );

    //P13 Pantalla Balon de Oro
  } else if ( estado.equals( "p13" )) {

    image( balonoro, 0, 0 );

    t1 = "Tras mi gran desempeño, pude coronarme";
    textSize( 30 );
    fill( 255 );
    text( t1, 40, 500 );

    t2 = "ganador un año mas del balon de oro. Mi 6to.";
    textSize( 30 );
    fill( 255 );
    text( t2, 15, 530 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t3, 110, 560 );

    //P14 Pantalla Creditos
  } else if ( estado.equals( "p14" )) {

    image( creditos, 0, 0 );

    t1 = "Creditos";
    textSize( 40 );
    fill( 255 );
    text( t1, 300, 150 );

    t2 = "Aventura de Lionel Messi";
    textSize( 30 );
    fill( 255 );
    text( t2, 210, 200 );

    t3 = "Alumno: Lage Ivan Nicolas";
    textSize( 30 );
    fill( 255 );
    text( t3, 200, 250 );

    t4 = "Legajo: 81771/5";
    textSize( 30 );
    fill( 255 ); 
    text( t4, 240, 300 );

    t5 = "Comision: 2";
    textSize( 30 );
    fill( 255 );
    text( t5, 270, 350 );

    t6 = "Prof: Matias Jauregui Lorda";
    textSize( 30 );
    fill( 255 );
    text( t6, 200, 400 );

    t7 = "Presiona ENTER para ir al inicio";
    textSize( 30 );
    fill( 255 );
    text( t7, 100, 500 );

    t8 = "FdA - UNLP";
    textSize( 30 );
    fill( 255 );
    text( t8, 300, 450 );

    //P15 Pantalla Jugada Gol Madrid
  } else if ( estado.equals( "p15" )) {

    image( goljugadaM, 0, 0 );

    t1 = "GOLON DE MESSI, ESPLENDIDA JUGADA DEL 10";
    textSize( 30 );
    fill ( 0 );
    text( t1, 20, 500 );

    t2 = "DEJANDO JUGADORES COMO CONOS. EMPATA 2-2.";
    textSize( 30 );
    fill( 0 );
    text( t2, 20, 530 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 0 );
    text( t3, 110, 560 );

    //P16 Pantalla Jugada Afuera Madrid
  } else if ( estado.equals( "p16" )) {

    image( nogoljugadaM, 0, 0 );

    t1 = "Expectacular jugada de Leo pero el disparo";
    textSize( 30 );
    fill ( 255 );
    text( t1, 20, 500 );

    t2 = "se va muy lejos y el barca sigue perdiendo.";
    textSize( 30 );
    fill( 255 );
    text( t2, 20, 530 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t3, 110, 560 );

    //P17 Pantalla Festejo Jugada Madrid
  } else if ( estado.equals( "p17" )) {

    image( festejoM, 0, 0 );

    t1 = "EL BARCA LO DA VUELTA CON UN GOLAZO";
    textSize( 30 );
    fill( 255 );
    text( t1, 60, 30 );

    t2 = "DE MESSI Y GANA EL CLASICO VS REAL MADRID";
    textSize( 30 );
    fill( 255 );
    text( t2, 30, 60 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t3, 110, 90 );

    //P18 Pantalla Fracaso Jugada Madrid
  } else if ( estado.equals( "p18" )) {

    image( fracasoM, 0, 0 );

    t1 = "El Barca de Messi pierde 2-1 y se le";
    textSize( 30 );
    fill( 255 );
    text( t1, 40, 500 );

    t2 = "escapa La Liga frente a un poderoso Madrid.";
    textSize( 30 );
    fill( 255 );
    text( t2, 20, 530 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t3, 110, 560 );

    //P19 Pantalla Partido vs Brasil
  } else if ( estado.equals( "p19" )) {

    image( vsBrasil, 0, 0 );

    t1 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 0 );
    text( t1, 110, 540 );

    //P20 Pantalla Partido vs Brasil
  } else if ( estado.equals( "p20" )) {

    image( elegiBrasil, 0, 0);

    t1 = "Se me presentan dos jugadas";
    textSize( 30 );
    fill( 255 );
    text( t1, 30, 100 );

    t2 = "en el partido";
    textSize( 30 );
    fill( 255 );
    text( t2, 30, 130 );

    t3 = "-Penal a favor";
    textSize( 30 );
    fill( 255 );
    text( t3, 30, 350 );

    t4 = "-Jugada de gol";
    textSize( 30 );
    fill( 255 );
    text( t4, 30, 400 );

    t5 = "Selecciona una oportunidad";
    fill( 255 );
    text( t5, 30, 250 );

    //P21 Pantalla Penal vs Brasil
  } else if ( estado.equals( "p21" )) {

    image( penalB, 0, 0 );

    fill( 0, 150 );
    rect( 37, 30, 410, 40 );

    fill( 0, 150 );
    rect( 37, 90, 445, 40 );

    fill( 0, 150 );
    rect( 0, 527, 800, 30 );

    fill( 0, 150 );
    rect( 235, 557, 360, 35 );

    t1 = "Patea al lado derecho";
    textSize( 30 );
    fill( 255 );
    text( t1, 50, 60 );

    t2 = "Patea al lado izquierdo";
    textSize( 30 );
    fill( 255 );
    text( t2, 50, 120 );

    t3 = "Partido aburrido, 0-0. Chance de Messi para";
    textSize( 30 );
    fill( 255 );
    text( t3, 15, 550 );

    t4 = "ganarlo y festejar.";
    textSize( 30 );
    fill( 255 );
    text( t4, 250, 580 );

    //P22 Pantalla Jugada vs Brasil
  } else if ( estado.equals( "p22" )) {

    image( jugadaB, 0, 0 );

    fill( 0, 150 );
    rect( 37, 30, 665, 40 );

    fill( 0, 150 );
    rect( 37, 90, 435, 40 );

    fill( 0, 150 );
    rect( 0, 527, 800, 30 );

    fill( 0, 150 );
    rect( 140, 557, 535, 35 );

    t1 = "Arranca desde izquiera, le pega y..";
    textSize( 30 );
    fill( 255 );
    text( t1, 50, 60 );

    t2 = "Le pega de primera y..";
    textSize( 30 );
    fill( 255 );
    text( t2, 50, 120 );

    t3 = "Se esta por terminar el partido, ultima";
    textSize( 30 );
    fill( 255 );
    text( t3, 40, 550 );

    t4 = "chance de Messi para ganarlo.";
    textSize( 30 );
    fill( 255 );
    text( t4, 150, 580 );

    //P23 Pantalla Penal Gol vs Brasil
  } else if ( estado.equals( "p23" )) {

    image( golpenalB, 0, 0 );

    t1 = "GO GO GOLAZO DE MESSI, LA PICO Y DEJO AL";
    textSize( 30 );
    fill( 255 );
    text( t1, 30, 30 );

    t2 = "ARQUERO DESPARRAMADO, GANA ARGENTINA.";
    textSize( 30 );
    fill( 255 );
    text( t2, 50, 60 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t3, 110, 90 );

    //P24 Pantalla Penal Afuera vs Brasil
  } else if ( estado.equals( "p24" )) {

    image( nogolpenalB, 0, 0 );

    t1 = "Flojo disparo del 10, el arquero ataja y";
    textSize( 30 );
    fill ( 0 );
    text( t1, 30, 500 );

    t2 = "el partido va a terminar 0-0.";
    textSize( 30 );
    fill( 0 );
    text( t2, 135, 530 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 0 );
    text( t3, 110, 560 );

    //P25 Pantalla Festejo penal vs Brasil
  } else if ( estado.equals( "p25" )) {

    image( festejoB, 0, 0 );

    t1 = "Gano Argentina con gol de Messi, gran";
    textSize( 30 );
    fill ( 255 );
    text( t1, 50, 500 );

    t2 = "victoria de la seleccion frente a Brasil.";
    textSize( 30 );
    fill( 255 );
    text( t2, 20, 530 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t3, 110, 560 );

    //P26 Pantalla Fracaso penal vs Brasil
  } else if ( estado.equals( "p26" )) {

    image( fracasoB, 0, 0 );

    t1 = "Empato Argentina contra un poderoso Brasil,";
    textSize( 30 );
    fill ( 255 );
    text( t1, 20, 500 );

    t2 = "la seleccion sigue jugando mal.";
    textSize( 30 );
    fill( 255 );
    text( t2, 125, 530 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t3, 110, 560 );

    //P27 Pantalla Jugada Gol vs Brasil
  } else if ( estado.equals( "p27" )) {

    image( goljugadaB, 0, 0 );

    t1 = "QUE PEDAZO DE GOL HIZO LIONEL, SE SACO 3";
    textSize( 30 );
    fill( 255 );
    text( t1, 30, 30 );

    t2 = "JUGADORES Y LA PUSO A LA IZQUIERDA DEL 1";
    textSize( 30 );
    fill( 255 );
    text( t2, 30, 60 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t3, 110, 90 );

    //P28 Pantalla Jugada Afuera vs Brasil
  } else if ( estado.equals( "p28" )) {

    image( nogoljugadaB, 0, 0 );

    t1 = "Buena jugada del astro argentino pero el";
    textSize( 30 );
    fill( 255 );
    text( t1, 40, 30 );

    t2 = "tiro se fue muy desviado. Gana Brasil 1-0.";
    textSize( 30 );
    fill( 255 );
    text( t2, 30, 60 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t3, 110, 90 );

    //P29 Pantalla Festejo Jugada vs Brasil
  } else if ( estado.equals( "p29" )) {

    image( festejoB, 0, 0 );

    t1 = "Gano Argentina con un golazo de Messi,";
    textSize( 30 );
    fill ( 255 );
    text( t1, 50, 500 );

    t2 = "gran victoria de la albiceleste.";
    textSize( 30 );
    fill( 255 );
    text( t2, 120, 530 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t3, 110, 560 );

    //P30 Pantalla Fracaso Jugada vs Brasil
  } else if ( estado.equals( "p30" )) {

    image( fracasoB, 0, 0 );

    t1 = "Perdio la seleccion 1-0, Messi intento pero";
    textSize( 30 );
    fill ( 255 );
    text( t1, 10, 500 );

    t2 = "no pudo. Argentina juega mal y preocupa.";
    textSize( 30 );
    fill( 255 );
    text( t2, 40, 530 );

    t3 = "Click en pantalla para continuar";
    textSize( 30 );
    fill( 255 );
    text( t3, 110, 560 );
  }
}

void mousePressed() {

  if ( estado.equals( "p1" )) {
    if ( mouseX > 345 && mouseX < 484 && mouseY > 443 && mouseY < 579 ) {   
      estado = "p2";
    }
  } else if ( estado.equals( "p2" )) {
    if ( mouseX > 73 && mouseX < 191 && mouseY > 427 && mouseY < 556 ) {
      estado = "p3";
    } else if ( mouseX > 620 && mouseX < 720 && mouseY > 420 && mouseY < 560 ) {
      estado = "p4";
    }
  } else if ( estado.equals( "p5" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p6";
    }
  } else if ( estado.equals( "p6" )) {
    if ( mouseX > 30 && mouseX < 345 && mouseY > 331 && mouseY < 352 ) {
      estado = "p7";
    } else if ( mouseX > 30 && mouseX < 275 && mouseY > 380 && mouseY < 405 ) {
      estado = "p8";
    }
  } else if ( estado.equals( "p7" )) {
    if ( mouseX > 37 && mouseX < 476 && mouseY > 30 && mouseY < 70 ) {
      estado = "p9";
    } else if ( mouseX > 37 && mouseX < 511 && mouseY > 92 && mouseY < 130 ) {
      estado = "p10";
    }
  } else if ( estado.equals( "p10" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p11";
    }
  } else if ( estado.equals( "p9" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p12";
    }
  } else if ( estado.equals( "p12" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p13";
    }
  } else if ( estado.equals( "p13" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p14";
    }
  } else if ( estado.equals( "p11" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p14";
    }
  } else if ( estado.equals( "p8" )) {
    if ( mouseX > 37 && mouseX < 650 && mouseY > 29 && mouseY < 70 ) {
      estado = "p16";
    } else if ( mouseX > 37 && mouseX < 500 && mouseY > 90 && mouseY < 130 ) {
      estado = "p15";
    }
  } else if ( estado.equals( "p15" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p17";
    }
  } else if ( estado.equals( "p17" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p13";
    }
  } else if ( estado.equals( "p16" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p18";
    }
  } else if ( estado.equals( "p18" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p14";
    }
  } else if ( estado.equals( "p19" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p20";
    }
  } else if ( estado.equals( "p20" )) {
    if ( mouseX > 30 && mouseX < 281 && mouseY > 331 && mouseY < 354 ) {
      estado = "p21";
    } else if ( mouseX > 30 && mouseX < 275 && mouseY > 380 && mouseY < 405 ) {
      estado = "p22";
    }
  } else if ( estado.equals( "p21" )) {
    if ( mouseX > 37 && mouseX < 445 && mouseY > 29 && mouseY < 70 ) {
      estado = "p24";
    } else if ( mouseX > 37 && mouseX < 480 && mouseY > 90 && mouseY < 130 ) {
      estado = "p23";
    }
  } else if ( estado.equals( "p23" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p25";
    }
  } else if ( estado.equals( "p24" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p26";
    }
  } else if ( estado.equals( "p25" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p13";
    }
  } else if ( estado.equals( "p26" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p14";
    }
  } else if ( estado.equals( "p22" )) {
    if ( mouseX > 37 && mouseX < 700 && mouseY > 29 && mouseY < 70 ) {
      estado = "p27";
    } else if ( mouseX > 37 && mouseX < 470 && mouseY > 90 && mouseY < 130 ) {
      estado = "p28";
    }
  } else if ( estado.equals( "p27" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p29";
    }
  } else if ( estado.equals( "p29" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p13";
    }
  } else if ( estado.equals( "p28" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p30";
    }
  } else if ( estado.equals( "p30" )) {
    if ( mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600 ) {
      estado = "p14";
    }
  }
}

void keyPressed() {
  if ( estado.equals( "p3" )) {
    if ( key == ' ' ) {
      estado = "p5";
    }
  }
  if ( estado.equals( "p14" )) {
    if ( keyCode == ENTER ) {
      estado = "p1";
    }
  }
  if ( estado.equals( "p4" )) {
    if ( key == ' ' ) {
      estado = "p19";
    }
  }
}

void mouseMoved() {

  println( mouseX + "MouseX" );
  println( mouseY + "MouseY" );
}
