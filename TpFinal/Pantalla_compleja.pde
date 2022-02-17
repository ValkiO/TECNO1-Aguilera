class PantallaCompleja {
  
  PImage fondo1, fondo2;
  
  
  PantallaCompleja(String nombreDeArchivo1, String nombreDeArchivo2) { // Este es el horno
    
    fondo1 = loadImage(nombreDeArchivo1);
    fondo2 = loadImage(nombreDeArchivo2);
    // setup de la clase (se ejecuta una vez, cuando creo la clase
  }
  
  void dibujar() {
    image(fondo1, 0, 0, width, height/2);
    image(fondo2, 0, height/2, width, height/2);
    // image(imagen, posX, posY, ancho, alto);
  }
  
  void onClick(String estadoObjetivo1, String estadoObjetivo2) {
    if(mouseY < height/2 ){
      aventura_objeto.estado = estadoObjetivo1;
      println("un camino");
    }else{
      aventura_objeto.estado = estadoObjetivo2;
      println("otro camino");
    }
  }
}
