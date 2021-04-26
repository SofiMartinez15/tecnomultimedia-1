class GestorDeVelocidadDelMouse{
    Dir_y_Vel mouse;
 boolean movimientoPeque;

  float tiempoPeque;

  GestorDeVelocidadDelMouse() {
    mouse = new Dir_y_Vel();
  }

  void VelocidadDelMouse() {
    mouse.calcularTodo(mouseX, mouseY);
    movimientoPeque = false;
   tiempoPeque--;
  
 tiempoPeque = constrain(tiempoPeque, 0, 90);
 
  
    if (mouse.velocidad()>10) {
      float umbral = 20;
      if (mouse.velocidad()>umbral) {
       tiempoPeque+=10;
       }
      }
    
    if (tiempoPeque>55) {
      movimientoPeque = true;
    } 
  
    
  }
}
