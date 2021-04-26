ArrayList<Caminante> cs; //declaración
Caminante2  c[];

Caminante3  d[];
GestorDeInteraccion g;
GestorDeVelocidadDelMouse v;
FondoDeLineas f;
int cant=12;
int cant2=4;


void setup() { //construcción
  size( 800, 600);
 background(#E3E8FA);
  g=new GestorDeInteraccion();
  v=new GestorDeVelocidadDelMouse();
  cs=new ArrayList<Caminante>(); //lineas horizontales

  c=new Caminante2[cant];
  d=new Caminante3[cant2];
  for (int i=0; i<cant; i++) {
    f=new FondoDeLineas();
    c[i]=new Caminante2();//lineas izquierda
  }
  for (int i=0; i<cant2; i++) {
    d[i]=new Caminante3();//lineas derecha
  }
}

void draw() {
   
  for (int i=0; i<cant2; i++) { //lineas verticales
    d[i].movimientoCamVertical();
    d[i].dibujarLineasVerticales();
  }
    v.VelocidadDelMouse();
  if (v.movimientoPeque) {
     f.movimientoDeFondoDeLineas();
  f.dibujarFondoDeLineas();
  for (int i=0; i<cant; i++) { //lineas izquierda
    c[i].movimientoCam2();
    c[i].dibujarLineasDeLaIzq();
  }
  
  }
 
 g.actualizar();
if (g.haciaLaIzquierda) {
    println("haciaLaIzquierda");
    cs.add(new Caminante(width,random(450,600), -1, 0));
  }

 /* if (g.haciaLaDerecha) {
    println("haciaLaDerecha");
    cs.add(new Caminante(0,random(100), 1, 0));
  }
*/
  for (Caminante c : cs) {
    c.dibujarLineas();
  }

}
