
void boton(){
  
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
