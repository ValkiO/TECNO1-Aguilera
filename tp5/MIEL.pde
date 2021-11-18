class Miel {

  float x, y;
  
  float tam;
  
  boolean estoyRota;
  
PImage miel;

  Miel(float posX, float posY) { 

 miel=loadImage("miel.png");
    estoyRota = false;
    
    this.x = posX;
    this.y = posY;
    
    tam = 40;
  }

  void caer() {
    y+= 5;

    if (y > height) {
      estoyRota = true;
    }
  }

  void dibujar() {
    image(miel, x, y, 60, 60);
    
  }
}
