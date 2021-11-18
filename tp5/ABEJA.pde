class Abeja {

  float x, y;//defino los parametros de la pos X e Y
  PImage abeja;                          // de la abeja

  Abeja(int posX, int posY) { 

    abeja=loadImage("abeja.png");

    this.x=posX;
    this.y=posY;
  }
  
  void caer() {
    y+= 5;

    if (y > height) {
      x=random(width);
      y=random(-1000);
    }
  }

  void dibujar() {
    image(abeja, x, y, 40, 40);
  }
}
