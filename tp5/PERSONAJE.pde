class Pooh {

  float x, y;//defino los parametros de la pos X e Y
  PImage poohimg;  

  Pooh() { 

    poohimg=loadImage("osopooh.png");

    x=width/2;
    y=height - 100;
  }
  void dibujar() {
    image(poohimg, x, y, 80, 80);
    // ellipse (x, y, 40, 40);
  }
  
  void teclapresionada() {
    if ((keyCode == RIGHT)&&(x<width-80)) {
      x += 15;
    } 
    if ((keyCode == LEFT)&&(x>0)) {
      x-=15;
    }
  }
}
