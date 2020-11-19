import ddf.minim.*;
Minim minim;
AudioPlayer musiquita;
Aventura aventura;
void setup() {
size(800, 600 );
minim = new Minim(this);
musiquita = minim.loadFile("musiquita.mp3");
//inicializo la aventura
aventura = new Aventura();
musiquita.loop();
textAlign(CENTER,CENTER);
}
void draw(){
aventura.play();
}
void mousePressed(){
 aventura.mouseprrr();
}
void keyPressed(){
  aventura.boton();
}
