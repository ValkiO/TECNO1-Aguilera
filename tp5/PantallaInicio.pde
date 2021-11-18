class PantallaInicio {

  PantallaInicio() {
  }

  void dibujar() {
    textAlign(CENTER);
    background(0);
    textSize(40);
    fill (255, 255, 0);
    text(" - DODGE THE BEES - \n Beta", width/2, 100);

    fill(255, 255, 255);
    textSize(30);
    text(" REGLAS", width/2, 250); 
    textSize(23);
    text("Pooh quiere su tan anciada miel, \n para llegar a ella debe esquivar a las abejas sin que ninguna lo toque \n si logra esquivarlas a todas \n ¡debe atrapar la miel!", width/2, 300);

  textSize(30);
    fill (255, 255, 0);
text(" Presione CLICK para comenzar", width/2, 500); 
}
}
