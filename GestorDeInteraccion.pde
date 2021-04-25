class GestorDeInteraccion { //devuelve los valores que necesito

  Dir_y_Vel mouse;
 
  boolean SeMovia;
  boolean haciaLaIzquierda, haciaLaDerecha;
  GestorDeInteraccion() { //devuelve el gesto desde la izq hacia la derecha,ocurre en un frame en paticular y no constantemente
    mouse= new Dir_y_Vel();
  }

  void actualizar() {

    mouse.calcularTodo(mouseX, mouseY);// para saber lo q pasa con el mouse

    //Que pasa con el mouse en este frame

    boolean seMueveEnEsteFrame= false;
    float sensibilidad=35;
    if (mouse.velocidad()>sensibilidad&& mouse.velocidad()<150) { //responde al mouse con determinada vel y sensibilidad
      seMueveEnEsteFrame=true; //si se mueve en esa sensibilidad es true
    }
    haciaLaIzquierda =false; //los valores tienen q volver a ser falsos
    haciaLaDerecha=false;
    if (seMueveEnEsteFrame&& ! SeMovia) {

      haciaLaIzquierda=mouse.direccionX()< sensibilidad? true:false;//si la dir del mouse en x es mayor a la sensibilidad va a ser true,en caso contrario va a ser false
      haciaLaDerecha=mouse.direccionX()> sensibilidad? true:false;
    }
    SeMovia=seMueveEnEsteFrame; //dejo listo todo para el sig frame
  }
  
}
