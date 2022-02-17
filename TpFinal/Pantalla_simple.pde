class PantallaSimple {
  
  // texto
  // String txt; 
  // Imagen
  PImage fondo;
  // Boton (me va a llevar a otra pantalla)
  Boton button;
  
  
  PantallaSimple(String nombreDeArchivo) { // Este es el horno
    
    fondo = loadImage(nombreDeArchivo);
    // setup de la clase (se ejecuta una vez, cuando creo la clase
    
    button = new Boton();
  }
  
  void dibujar() {
    image(fondo, 0, 0, width, height);
    button.dibujar();
  }
 
}
