String estado;
int posY;
String t1, t2, t3, t4, t5, t6, t7, t8, t9;
PFont Leo;
PImage inicio, subinicio, barca, debutb, primergolb, golimportanteb, titulo, argentina, debuta, primergolafa, golimportanteafa, tituloafa, balonoro, creditos, oro, messi, balon, messia, portada;
void setup() {
  estado = "p1";
  size( 800, 600 );
  Leo = loadFont( "Monospaced.plain-48.vlw" );
  textFont( Leo );
  inicio = loadImage( "inicio.png" );
  subinicio = loadImage( "subinicio.png" );
  barca = loadImage( "carrera barca.png" );
  debutb = loadImage( "debut barca.png" );
  primergolb = loadImage( "primer gol barca.png" );
  golimportanteb = loadImage( "gol importante barca.png" );
  titulo = loadImage( "titulo barca.png" );
  argentina = loadImage( "carrera arg.png" );
  debuta = loadImage( "debut arg.png" );
  primergolafa = loadImage( "primer gol arg.png" );
  golimportanteafa = loadImage( "gol importante arg.png" );
  tituloafa = loadImage( "titulo arg.png" );
  balonoro = loadImage( "balon oro.png" );
  creditos = loadImage( "creditos.png" );
  oro = loadImage( "balonoro.png" );
  messi = loadImage( "messi.png" );
  messia = loadImage( "messiarg.png" );
  portada = loadImage( "portada.png" ); 
  posY = -1000;
}

void draw() {

  //P1: Aventura Lionel Messi (inicio)

  if ( estado.equals( "p1" )) {

    image( inicio, -50, 0, 900, 600 );

    t1 = "Aventura de";
    textSize( 30 );
    text( t1, 450, 100 );

    t2 = "Lionel Messi";
    textSize( 40 );
    text( t2, 400, 140);

    t3 = "Click en pelota";
    textSize( 30 );
    text( t3, 350, 300 );

    t4 = "para comenzar";
    textSize( 30 );
    text( t4, 500, 325 );

    //P2: Conoce la historia del crack argentino (subinicio)
  } else if ( estado.equals( "p2" )) {

    image( subinicio, -100, 0, 900, 600 );

    noStroke();
    fill( 0, 150 );
    rect( 150, 305, 450, 50 );

    noStroke();
    fill( 0, 150 );
    rect( 240, 355, 290, 40 );

    t5 = "Conoce mi gran historia";
    textSize( 30 );
    fill( 255 );
    text( t5, 170, 340 );

    /*t6 = "y te voy contando";
     textSize( 25 );
     fill( 255 );
     text( t6, 260, 420);*/

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


    //P3: Camino Barcelona
  } else if ( estado.equals( "p3" )) {

    image( barca, -100, 0, 900, 600 );

    fill( 0, 150 ); 
    rect( 40, 65, 740, 50 );

    t1 = "Presiona barra espaciadora para comenzar";
    textSize( 30 );
    fill( 255 );
    text( t1, 50, 100 );

    //P4: Camino Argentina
  } else if ( estado.equals( "p4" )) {

    image( argentina, -50, 0, 900, 600 );

    fill( 0, 150 ); 
    rect( 40, 65, 740, 50 );

    t1 = "Presiona barra espaciadora para comenzar";
    textSize( 30 );
    fill( 255 );
    text( t1, 50, 100 );

    //P5: Debut en Barca
  } else if ( estado.equals( "p5" )) {

    image( debutb, -50, 0, 900, 600 );
    image( messi, -30, 400, 200, 200 );

    fill( 0, 150 ); 
    rect( 80, 20, 650, 50 );

    fill( 0, 150 );
    rect( 160, 400, 630, 160 );

    t1 = "-Bueno, me tocaba debutar con 17 años,";
    textSize( 27 );
    fill( 255 );
    text( t1, 170, 440 );

    t2 = "el 16 de octubre de 2004 en el derby";
    textSize( 27 );
    fill( 255 );
    text( t2, 170, 470 );

    t3 = "contra el Espanyol, en un partido";
    textSize( 27 );
    fill( 255 );
    text( t3, 170, 500 );

    t4 = "que me cambio la vida a mi y al Barca.";
    textSize( 27 );
    fill( 255 );
    text( t4, 170, 530 );

    t5 = "Presiona la letra b para continuar";
    textSize( 30 );
    fill( 255 );
    text( t5, 100, 50 );

    //P6: Primer gol/Gol importante
  } else if ( estado.equals( "p6" )) {

    image( debutb, -50, 0, 900, 600 );
    image( messi, -30, 400, 200, 200 );
    image( oro, 260, 490, 100, 100 );
    image( oro, 510, 490, 100, 100 );

    fill( 0, 150 );
    rect( 240, 380, 390, 50 );

    t1 = "Selecciona el camino";
    fill( 255 );
    textSize( 30 );
    text( t1, 250, 410 );

    t2 = "Primer gol";
    fill( 0 );
    textSize( 20 );
    text( t2, 260, 470 );

    t3 = "Gol más importante";
    fill( 0 );
    textSize( 20 );
    text( t3, 480, 470 );

    //P7: Primer gol Barca
  } else if ( estado.equals( "p7" )) {

    image( primergolb, -50, 0, 900, 600 );
    image( messi, -30, 400, 200, 200 );

    fill( 0, 150 ); 
    rect( 30, 20, 760, 50 );

    fill( 0, 150 );
    rect( 160, 410, 620, 160 );

    t1 = "El 1 de mayo de 2005, tuve la suerte";
    textSize( 27 );
    fill( 255 );
    text( t1, 170, 440 );

    t2 = "de marcar mi primer gol en el Barca."; 
    textSize( 27 );
    fill( 255 );
    text( t2, 170, 470 );

    t3 = "Fue contra el Albacete en el minuto";
    textSize( 27 );
    fill( 255 );
    text( t3, 170, 500 );

    t4 = "87, luego de una asistencia de";
    textSize( 27 );
    fill( 255 );
    text( t4, 170, 530 );

    t5 = "Ronaldinho.";
    textSize( 27 );
    fill( 255 );
    text( t5, 170, 560);

    t6 = "Presiona barra espaciadora para continuar";
    textSize( 30 );
    fill( 255 );
    text( t6, 40, 50 );

    //P8: Gol mas importante
  } else if ( estado.equals( "p8" )) {

    image( golimportanteb, -50, 0, 900, 600 );
    image( messi, -30, 400, 200, 200 );

    fill( 0, 150 ); 
    rect( 30, 20, 760, 50 );

    fill( 0, 150 );
    rect( 160, 410, 620, 160 );

    t1 = "El 27 de mayo de 2009, hice el gol más importante,";
    textSize( 20 );
    fill( 255 );
    text( t1, 170, 440 );

    t2 = "un centro preciso de Xavi, con mi pequeña estatura";
    textSize( 20 );
    fill( 255 );
    text( t2, 170, 470 );

    t3 = "me eleve de manera increible para conectar con la";
    textSize( 20 );
    fill( 255 );
    text( t3, 170, 500 );

    t4 = "cabeza y colocarlo por encima de Van der Saar.";
    textSize( 20 );
    fill( 255 );
    text( t4, 170, 530);

    t5 = "Y asi, ganar mi primer champions.";
    textSize( 20 );
    fill( 255 );
    text( t5, 170, 560);

    t6 = "Presiona barra espaciadora para continuar";
    textSize( 30 );
    fill( 255 );
    text( t6, 40, 50 );

    //P9: Titulo mas importante (Barca)
  } else if ( estado.equals( "p9" )) {

    image( titulo, -50, 0, 900, 600 );
    image( messi, -30, 400, 200, 200 );

    fill( 0, 150 ); 
    rect( 80, 20, 650, 50 );

    fill( 0, 150 );
    rect( 160, 410, 620, 160 );

    t1 = "La Champions de 2011 fue la más";
    textSize( 27 );
    fill( 255 );
    text( t1, 170, 440 );

    t2 = "importante por lo que era el equipo,";
    textSize( 27 );
    fill( 255 );
    text( t2, 170, 470 );

    t3 = "fuimos los mejores del mundo y tuve";
    textSize( 27 );
    fill( 255 );
    text( t3, 170, 500 );

    t4 = "un año inolvidable. Jugue 57 partidos";
    textSize( 27);
    fill( 255 );
    text( t4, 170, 530);

    t5 = "y marque 55 goles.";
    textSize( 27 );
    fill( 255 );
    text( t5, 170, 560);

    t6 = "Presiona la letra o para continuar";
    textSize( 30 );
    fill( 255 );
    text( t6, 100, 50 );

    //P10: Balones de Oro
  } else if ( estado.equals( "p10" )) {

    image( balonoro, -50, 0, 900, 600 );
    noStroke();
    fill( 0, 150 );
    rect( 10, 250, 780, 140 );

    noStroke();
    fill( 0, 150 );
    rect( 140, 390, 530, 30 );

    noStroke();
    fill( 0, 150 );
    rect( 160, 420, 500, 30 );

    t1 = "Si bien los títulos individuales no es lo mas importante para";
    textSize( 21 );
    fill( 255 );
    text( t1, 15, 280 );

    t2 = " mi, siempre es lindo ser ganador un premio de esta magnitud.";
    textSize( 21 );
    fill( 255 );
    text( t2, 15, 310 );

    t3 = "Siempre lo dije, y lo voy a seguir diciendo. Estos titulos";
    textSize( 21 );
    fill( 255 );
    text( t3, 15, 340 );

    t4 = "van dedicados a mis compañeros. Esto tambien es de ellos.";
    textSize( 21 );
    fill( 255 );
    text( t4, 15, 370 );

    t5 = "Presiona BACKSPACE para volver al inicio";
    textSize( 21 );
    fill( 255 );
    text( t5, 150, 405 );

    t6 = "Presiona la letra c para ver creditos";
    textSize( 21 );
    fill( 255 );
    text( t6, 170, 440 );

    //P11: Creditos
  } else if ( estado.equals( "p11" )) {

    image( creditos, -50, 0, 900, 600 );
    image( portada, 0, posY, 1000, 600 );
    posY++;

    if ( posY >= 0 ) {
      posY--;
      
    }

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

    t7 = "Presiona BACKSPACE para ir al inicio";
    textSize( 30 );
    fill( 255 );
    text( t7, 100, 500 );
    
    t8 = "FdA - UNLP";
    textSize( 30 );
    fill( 255 );
    text( t8, 300, 450 );
    






    

      //CREDITOS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    


    //P12: Debut Argentina
  } else if ( estado.equals( "p12" )) {

    image( debuta, -50, 0, 900, 600 );
    image( messia, 650, 350, 160, 300 );

    fill( 0, 150 );
    rect( 5, 430, 610, 160 );

    fill( 0, 150 ); 
    rect( 80, 20, 650, 50 );

    t5 = "Presiona la letra a para continuar";
    textSize( 30 );
    fill( 255 );
    text( t5, 100, 50 );

    t1 = "-El 17 de agosto de 2005 me tocaba";
    textSize( 27 );
    fill( 255 );
    text( t1, 10, 460 );

    t2 = "debutar en la selección, entre en a";
    textSize( 27 );
    fill( 255 );
    text( t2, 10, 490 );

    t3 = "los 21' del ST. Fue una linda alegria";
    textSize( 27 );
    fill( 255 );
    text( t3, 10, 520 );

    t4 = "pero no duro mucho porque 47 segundos";
    textSize( 27 );
    fill( 255 );
    text( t4, 10, 550 );

    t5 = "despues, me expulsaron por un codazo.";
    textSize( 27 );
    fill( 255 );
    text( t5, 10, 580 );

    //P13: Primer gol/Gol importante
  } else if ( estado.equals( "p13" )) {

    image( debuta, -50, 0, 900, 600 );
    image( messia, 650, 350, 160, 300 ); 

    image( oro, 160, 490, 100, 100 );
    image( oro, 410, 490, 100, 100 );

    fill( 0, 150 );
    rect( 155, 380, 390, 50 );

    t1 = "Selecciona el camino";
    fill( 255 );
    textSize( 30 );
    text( t1, 170, 410 );

    t2 = "Primer gol";
    fill( 0 );
    textSize( 20 );
    text( t2, 160, 470 );

    t3 = "Gol más importante";
    fill( 255 );
    textSize( 20 );
    text( t3, 380, 470 );

    //P14: Primer gol Argentina
  } else if ( estado.equals( "p14" )) {

    image( primergolafa, -200, 0, 1000, 600 );
    image( messia, 650, 350, 160, 300 );

    fill( 0, 150 );
    rect( 5, 430, 645, 160 );

    fill( 0, 150 ); 
    rect( 30, 20, 760, 50 );

    t1 = "Mi primer gol en Argentina fue el 1°";
    textSize( 27 );
    fill( 255 );
    text( t1, 10, 460 );

    t2 = "de marzo contra Croacia en un amistoso.";
    textSize( 27 );
    fill( 255 );
    text( t2, 10, 490 );

    t3 = "Defino de zurda desde el borde del area";
    textSize( 27 );
    fill( 255 );
    text( t3, 10, 520 );

    t4 = "para poner el 2-1 a favor, para despues";
    textSize( 27 );
    fill( 255 );
    text( t4, 10, 550 );

    t5 = "celebrar el gol abrazando a Riquelme.";
    textSize( 27 );
    fill( 255 );
    text( t5, 10, 580 );

    t6 = "Presiona barra espaciadora para continuar";
    textSize( 30 );
    fill( 255 );
    text( t6, 40, 50 );




    //P15: Gol importante Argentina
  } else if ( estado.equals( "p15" )) {

    image( golimportanteafa, -100, 0, 1000, 600  );
    image( messia, 650, 350, 160, 300 );

    fill( 0, 150 );
    rect( 5, 430, 645, 160 );

    fill( 0, 150 ); 
    rect( 30, 20, 760, 50 );

    t1 = "Mi gol más importante en la selección";
    textSize( 27 );
    fill( 255 );
    text( t1, 10, 460 );

    t2 = "fue contra Ecuador en eliminatorias.";
    textSize( 27 );
    fill( 255 );
    text( t2, 10, 490 );

    t3 = "Estabamos obligados a ganar para ir al";
    textSize( 27 );
    fill( 255 );
    text( t3, 10, 520 );

    t4 = "mundial y esa noche tuve la suerte de";
    textSize( 27 );
    fill( 255 );
    text( t4, 10, 550 );

    t5 = "hacer tres goles y poder clasificar.";
    textSize( 27 );
    fill( 255 );
    text( t5, 10, 580 );

    t6 = "Presiona barra espaciadora para continuar";
    textSize( 30 );
    fill( 255 );
    text( t6, 40, 50 );

    //P16: Titulo mas importante Argentina
  } else if ( estado.equals( "p16" )) {

    image( tituloafa, 0, 0, 900, 600 );
    image( messia, 650, 350, 160, 300 );

    fill( 0, 150 );
    rect( 5, 430, 645, 160 );

    fill( 0, 150 ); 
    rect( 80, 20, 650, 50 );

    t1 = "El título que más disfrute fue en";
    textSize( 27 );
    fill( 255 );
    text( t1, 10, 460 );

    t2 = "2008. Los Juegos Olímpicos en Beijing.";
    textSize( 27 );
    fill( 255 );
    text( t2, 10, 490 );

    t3 = "En ese entonces con la 15, la 10 era";
    textSize( 27 );
    fill( 255 );
    text( t3, 10, 520 );

    t4 = "de Riquelme. Ganamos 1-0 la final";
    textSize( 27 );
    fill( 255 );
    text( t4, 10, 550 );

    t5 = "contra Nigeria. Terminó y a festejar.";
    textSize( 27 );
    fill( 255 );
    text( t5, 10, 580 );

    t6 = "Presiona la letra o para continuar";
    textSize( 30 );
    fill( 255 );
    text( t6, 100, 50 );
  }
}


void mousePressed() {

  if ( estado.equals( "p1" )) {
    if ( mouseX > 550 && mouseX < 710 && mouseY > 360 && mouseY < 540 ) {   
      estado = "p2";
    }
  } else if ( estado.equals( "p2" )) {
    if (mouseX > 80 && mouseX < 185 && mouseY > 425 && mouseY < 556 ) {
      estado = "p3";
    } else if ( mouseX > 620 && mouseX < 715 && mouseY > 420 && mouseY < 560 ) {
      estado = "p4";
    }
  } else if (estado.equals( "p6" )) {
    if ( mouseX > 280 && mouseX < 342 && mouseY > 497 && mouseY < 587 ) {
      estado = "p7";
    } else if ( mouseX > 529 && mouseX < 591 && mouseY > 497 && mouseY < 587 ) {
      estado = "p8";
    }
  } else if (estado.equals( "p13" )) {
    if ( mouseX > 180 && mouseX < 242 && mouseY > 497 && mouseY < 587 ) {
      estado = "p14";
    } else if ( mouseX > 429 && mouseX < 591 && mouseY > 497 && mouseY < 587 ) {
      estado = "p15";
    }
  }
}

void keyPressed() {

  if ( estado.equals( "p3" )) {
    if ( key == ' ' ) {
      estado = "p5";
    }
  }
  if ( estado.equals( "p5" )) {
    if ( key == 'b' ) {
      estado = "p6";
    }
  }
  if ( estado.equals( "p7" )) {
    if ( key == ' ' ) {
      estado = "p9";
    }
  }
  if ( estado.equals( "p8" )) {
    if ( key == ' ' ) {
      estado = "p9";
    }
  }
  if ( estado.equals( "p9" )) {
    if ( key == 'o' ) {
      estado = "p10";
    }
  }
  if ( estado.equals( "p10" )) {
    if ( keyCode == BACKSPACE ) {
      estado = "p1";
    }
  }
  if ( estado.equals( "p10" )) {
    if ( key == 'c' ) {
      estado = "p11";
    }
  }
  if ( estado.equals( "p11" )) {
    if ( keyCode == BACKSPACE ) {
      estado = "p1";
    }
  }
  if ( estado.equals( "p4" )) {
    if ( key == ' ' ) {
      estado = "p12";
    }
  }
  if ( estado.equals( "p12" )) {
    if ( key == 'a' ) {
      estado = "p13";
    }
  }
  if ( estado.equals( "p14" )) {
    if ( key == ' ' ) {
      estado = "p16";
    }
  }
  if ( estado.equals( "p15" )) {
    if ( key == ' ' ) {
      estado = "p16";
    }
  }
  if ( estado.equals( "p16" )) {
    if ( key == 'o' ) {
      estado = "p10";
    }
  }
}
void mouseMoved() {

  println( "posY: " + posY );
}
