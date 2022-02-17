class Boton {

  //Propiedades: 
  // posicion
  float posX, posY;
  // tamaño 
  float tam; 
  // un color
  color tintura;

  Boton(){
    tam = 75;
    posX = width - tam;
    posY = height * .5;
    tintura = color(random(255), random(255), random(255));
  }

  void dibujar() {
    rectMode(CENTER);
    fill(tintura);
    ellipse(posX, posY, tam, tam);
    fill(0);
    textSize(tam);
    text(">", posX-tam/4, posY+tam/4);
  }

  void onClick(String estadoObjetivo){
    float distancia = dist(posX, posY, mouseX, mouseY);
    
    if(distancia < tam/2) {
      aventura_objeto.estado = estadoObjetivo;
    }
    
  }

  //Tinene que hacer: 
  // dibujarse
  // cambiar de pantalla
}
