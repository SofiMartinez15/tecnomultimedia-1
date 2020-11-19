class Aventura {

  int imagenes = 18;
  PImage [] image = new PImage[imagenes];
  PImage cursor;
  PImage fondo;
  String[] cajat = new String [44];
  String[] rajat = new String [2];
  PFont  let1;
  PFont  let2;
  String estado;  //--> para manejar las pantallas (lógica de estados)
  Juego j;

  Aventura() {
    estado = "menu";  //--> primer instancia de pantallas
    let1 =  loadFont("Haettenschweiler-48.vlw");
    let2 =  loadFont("ArialMT-48.vlw");
    cajat();
    rajat();
    textFont(let1);
    imagen();

    j = new Juego (this);
    estado = "menu";
    cursor = loadImage ("mascara.png");
    fondo = loadImage ("fondo.png");
  }

  void ganar() {
    estado = "pantalla_seis";
  }

  void perder() {
    estado = "pantalla_diez";
  }

  //metodos
  void play() {  //draw  //maneja lógica de estados

    if (estado.equals ("menu") ) {
      image(image[0], 0, 0, 800, 600);
      textAlign(CENTER, CENTER);
      fill(255);
      rexto (60, 400, 150, 0);
      fill(0, 150);
      rect(230, 565, 340, 25);
      fill(255);
      textos (24, 400, 580, 1);
    } else if (estado.equals("pantalla_uno") ) {
      image(image[1], 0, 0, 800, 600);
      fill(0, 150);
      rect(0, 0, 800, 70);
      fill(255);
      textos (24, 400, 20, 2);
      textos (24, 380, 42, 3);
      fill(0, 150);
      rect(230, 565, 340, 25);
      fill(255);
      textos (24, 400, 580, 4);
    } else if (estado.equals( "pantalla_dos") ) {
      image(image[1], 0, 0, 800, 600);
      fill(0, 150);
      rect(20, 20, 760, 50);
      fill(255);
      textos (24, 400, 50, 5);
      fill(0, 150);
      rect(70, 280, 240, 50);
      fill(255);
      textos (13, 190, 295, 6);
      textos (13, 190, 310, 7);
      fill(0, 150);
      rect(480, 280, 240, 50);
      fill(255);
      textos (13, 600, 295, 8);
      textos (13, 600, 310, 9);
      image(image[2], 50, 350, 300, 200);
      image(image[3], 400, 340, 400, 250);
    } else if (estado.equals( "pantalla_tres") ) {
      image(image[4], 0, 0, 800, 600);
      fill(0, 150);
      rect(0, 0, 800, 90);
      fill(255);
      textos (24, 400, 20, 10);
      textos (24, 400, 42, 11);
      textos (24, 400, 66, 12);
      fill(0, 150);
      rect(70, 280, 240, 50);
      fill(255);
      textos (13, 190, 295, 13);
      textos (13, 190, 310, 14);
      fill(0, 150);
      rect(480, 280, 240, 50);
      fill(255);
      textos (13, 600, 300, 15);
      image(image[5], 50, 350, 300, 200);
      image(image[6], 480, 360, 300, 200);
    }
    //muerto
    else if (estado.equals( "pantalla_cuatro") ) {
      background(0);
      fill(255, 0, 0);
      textos (24, 400, 20, 16);
      textos (24, 400, 42, 17);
      textos (24, 400, 66, 18);
      image(image[7], 100, 200, 600, 300);
    }
    //escape
    else if (estado.equals( "pantalla_cinco") ) {
      image(image[8], 0, 0, 800, 600);
      fill(0, 150);
      rect(0, 0, 800, 90);
      fill(255);
      textos (24, 400, 20, 19);
      textos (24, 400, 42, 20);
      textos (24, 400, 66, 21);
      fill(0, 150);
      rect(70, 280, 240, 50);
      fill(255);
      textos (13, 190, 300, 24);
      textos (13, 190, 310, 25);
      fill(0, 150);
      rect(480, 280, 240, 50);
      fill(255);
      textos (13, 600, 300, 22);
      textos (13, 600, 310, 23);
      image(image[10], 50, 360, 300, 200);
      image(image[9], 480, 360, 300, 200);
    } else if (estado.equals( "pantalla_seis") ) {
      image(image[13], 0, 0, 800, 600);
      fill(0, 200);
      rect(0, 240, 800, 130);
      fill(255);
      textos (24, 400, 260, 26);
      textos (24, 400, 280, 27);
      textos (24, 400, 305, 28);
      textos (24, 400, 325, 29);
      textos (24, 400, 347, 30);
      fill(0, 150);
      rect(230, 565, 340, 321);
      fill(255);
      textos (18, 400, 580, 31);
    } else if (estado.equals( "pantalla_siete") ) {
      image(image[11], 0, 0, 800, 600);
      fill(0, 200);
      rect(0, 240, 800, 90);
      fill(255);
      textos (24, 400, 260, 32);
      textos (24, 400, 280, 33);
      textos (24, 400, 305, 34);
      fill(0, 150);
      rect(230, 565, 340, 25);
      fill(255);
      textos (15, 400, 580, 35);
    } else if (estado.equals( "pantalla_ocho") ) {
      image(image[12], 0, 0, 800, 600);
      fill(0, 150);
      rect(0, 240, 800, 40);
      fill(255);
      textos (24, 400, 260, 36);
      fill(0, 150);
      rect(230, 565, 340, 25);
      fill(255);
      textos (20, 400, 580, 37);
    }
    //creditos
    else if ( estado.equals( "pantalla_nueve" ) ) {       
      fill(0);
      rect(0, 0, 800, 600);
      fill(255);
      textos (24, 400, 260, 38);
      textos (24, 400, 290, 39);
      textos (24, 400, 320, 40);
      textos (24, 400, 350, 41);
      textos (24, 400, 380, 42);
      textos (24, 400, 490, 43);
    } else if (estado.equals( "pantalla_diez") ) {
      image(image[17], 0, 0 );
      fill(0, 150);
      rect(230, 565, 340, 25);
      fill(255);
      textos (15, 400, 580, 35);
    }
    if (estado.equals( "minijuego" )) {   //<<<<<<<<<<<<<<------------------- minijuego (lo visual)
      background ( fondo );
      j.play();
      image (cursor, pmouseX, pmouseY, 50, 50);
    }
  }
  void boton() {
    if ( estado.equals( "menu" )) {
      if ( key == ' ' ) {
        estado = "pantalla_uno";
      }
    } else if ( estado.equals( "pantalla_uno" )) {
      if ( key == ' ' ) {
        estado = "pantalla_dos";
      }
    } else if ( estado.equals( "pantalla_cuatro" )) {
      if ( key == BACKSPACE ) {
        estado = "menu";
      }
    } else if (estado.equals( "pantalla_siete" )) {
      if ( key == BACKSPACE ) {
        estado = "menu";
      }
    }
    if ( estado.equals( "pantalla_ocho" )) {
      if ( key == ' ' ) {
        estado = "pantalla_nueve";
      }
    } else if ( estado.equals( "pantalla_nueve" )) {
      if ( key == BACKSPACE ) {
        estado = "menu";
      }
    } else if ( estado.equals( "pantalla_diez" )) {
      if ( key == BACKSPACE ) {
        estado = "menu";
      }
    } else if ( estado.equals( "pantalla_seis" )) {
      if ( key == ' ' ) {
        estado = "pantalla_ocho";
      }
    }
  }
  void keyPressed() {
    boton();
  }
  void mouseprrr() {
    if ( estado.equals( "pantalla_dos" )) {
      if ( mouseX > 50 && mouseX < 350 && mouseY > 350 && mouseY < 550 ) estado = "pantalla_tres";
      else if ( mouseX > 470 && mouseX < 720 && mouseY > 388 && mouseY < 540 ) estado = "pantalla_tres";
    } else if ( estado.equals( "pantalla_tres" )) {
      if ( mouseX > 50 && mouseX < 350 && mouseY > 350 && mouseY < 550 ) estado = "pantalla_cuatro";
      else if ( mouseX > 470 && mouseX < 720 && mouseY > 388 && mouseY < 540 ) estado = "pantalla_cinco";
    } else if ( estado.equals( "pantalla_cinco" )) {
      if ( mouseX > 50 && mouseX < 350 && mouseY > 350 && mouseY < 550 ) estado = "minijuego";
      else if ( mouseX > 470 && mouseX < 720 && mouseY > 388 && mouseY < 540 ) estado = "pantalla_siete";
    }
    if (estado.equals ("minijuego")) {  //  minijuego 
      j.click ();
    }
  }


  void imagen() {
    image[0] =  loadImage( "maqueta.png" );
    image[1] =  loadImage( "planilla.png" );
    image[2] =  loadImage( "vestidos1.png" );
    image[3] =  loadImage( "violencia1.png" );
    image[4] =  loadImage( "rehenes.png" );
    //fallo
    image[5] =  loadImage( "dispar1.png" );
    image[6] =  loadImage( "escapar.png" );
    image[7] =  loadImage( "muertou.png" );
    image[8] =  loadImage( "fondo3.png" );
    //fallo
    image[9]=   loadImage( "escape2.png" );
    image[10] = loadImage( "escape.png" );
    //lobby
    image[11] = loadImage( "puerta.png" );
    image[12] = loadImage( "finalfin.png" );
    image[13] = loadImage( "fin21.png" );
    //imagen juego
    image[14] = loadImage( "mascara.png" );
    image[15] = loadImage( "policia.png" );
    image[16] = loadImage( "dinero.png" );
    image[17] = loadImage( "fallo.png" );
  }
  //caja de texto
  void cajat () {
    cajat[1]=  "presiona espacio para continuar";
    cajat[2]=  "Mauricio un hombre de 32 años Argentino decide llevar acabo un plan para";
    cajat[3]=  "lograr robar un banco junto sus ex compañeros de la escuela.";
    cajat[4]=  "presiona espacio para continuar";
    cajat[5]=  "Llego el dia del Robo¿Como quieres que entre el equipo?";
    cajat[6]=  "vestidos como transeuntes e ingresando";
    cajat[7]=  "sin violencia y sin golpear a nadie.";
    cajat[8]=  "ingresar ya vestidos como atracadores";
    cajat[9]=  "y de forma violenta.";
    cajat[10]= "Una vez dentro del banco el equipo amarra a todos los rehenes.";
    cajat[11]= "Surge un problema,uno de los rehenes intenta escaparse.";
    cajat[12]= "¿Que hay que hacer ante esta situacion?";
    cajat[13]= "Dispararle a la ";
    cajat[14]= "persona que huye";
    cajat[15]= "Dejar que escape";
    cajat[16]= "No es una buena idea";
    cajat[17]= "Somos ladrones,no asesinos.";
    cajat[18]= "Apreta la tecla 'BACKSPACE' para volver al inicio";
    cajat[19]= "Ellos lo ven como un problema menor ya que habia que seguir";
    cajat[20]= "con el plan.Acto siguiente hay que tomar el dinero y escapar";
    cajat[21]= "de la policia.¿Cual es la forma mas discreta para huir que tenemos?";
    cajat[22]= "tomar diinero y huir en helicoptero ";
    cajat[23]= "por el techo. ";
    cajat[24]= "tomar dinero y huir en camion ";
    cajat[25]= "disfrazados. ";
    cajat[26]= "¡LO LOGRAMOS!";
    cajat[27]= "Pudimos escapar de forma sigilosa y sin dañar a nadie ";
    cajat[28]= "La mision fue un exito y los ladones hicieron el ";
    cajat[29]= "reparto de los bienes entre si y el dinero robado ";
    cajat[30]= "fue devuelto a cada uno de los clientes del banco";
    cajat[31]= "apreta la tecla espacio para continuar";
    cajat[32]= "No parece ser muy util";
    cajat[33]= "No es una forma muy discreta escapar atravez de un ";
    cajat[34]= "helicoptero. ";
    cajat[35]= "presiona 'BACKSPACE' para volver al inicio ";
    cajat[36]= "¡Muchas gracias por Probarlo!";
    cajat[37]= "presiona espacio para los creditos.";
    cajat[38]= "Aventura grafica creada por Felipe Marano e Ivan Lage. ";
    cajat[39]= "Una histora creada atravez de la pelicula El Robo Del Siglo.. ";
    cajat[40]= "Imagenes de La Casa De Papel. ";
    cajat[41]= "Editor Felipe Marano e Ivan Lage. ";
    cajat[42]= "espero que lo disfruten como nosotros disfrutamos crearlo. ";
    cajat[43]= "presiona 'BACKSPACE' para volver al inicio ";
  }
  void rajat() {
    rajat[0]= "E L   R O B O";
  }
  //defino textos
  void textos( float tamText, float x, float y, int i ) {

    pushStyle ();
    textFont(let2);
    textSize (tamText);
    text (cajat [i], x, y);
    popStyle ();
  }
  void rexto( float tamText, float x, float y, int i ) {

    pushStyle ();
    textSize ( tamText );
    text ( rajat [i], x, y );
    popStyle ();
  }
}
