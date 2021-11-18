class Pantalla {
  PantallaInicio inicio;
  PFont fuente;

  Pantalla() {
    inicio=new PantallaInicio();
    fuente= loadFont("BellMT-48.vlw");
  }

  void inicio() {
    textFont(fuente);
    inicio.dibujar();
  }

  void perdiste() {
    textFont(fuente);
    background(0);
    textSize(30);
    text("Has perdido :( \n CLICK PARA REINICIAR", width/2, height/2);
  }

  void ganaste() {
    textFont(fuente);
    background(0);
    textSize(30);
    text("¡Has Ganado! \n CLICK PARA REINICIAR", width/2, height/2);
  }
}
