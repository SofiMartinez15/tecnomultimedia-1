class GestorDeVelocidadDelMouse{
    Dir_y_Vel mouse;
 boolean movimientoGrande;

  float tiempoGrande;

  GestorDeVelocidadDelMouse() {
    mouse = new Dir_y_Vel();
  }

  void VelocidadDelMouse() {
    mouse.calcularTodo(mouseX, mouseY);
    movimientoGrande = false;
   tiempoGrande--;
  
 tiempoGrande = constrain(tiempoGrande, 0, 90);
 
  
    if (mouse.velocidad()>10) {
      float umbral = 40;
      if (mouse.velocidad()>umbral) {
       tiempoGrande+=10;
       }
      }
    
    if (tiempoGrande>55) {
      movimientoGrande = true;
    } 
  
    
  }
}
