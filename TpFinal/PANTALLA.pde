class Pantalla {
  Juego juego;
  PFont fuente;
  int pantallas;

  Pantalla() {
    fuente= loadFont("BellMT-48.vlw");
    pantallas = 0;
    juego = new Juego();
  }

  void ejecutar() { // draw
    if (pantallas==0) {   
      inicio();
    } else if (pantallas==1) {
      juego.dibujar();
    } else  if (pantallas==2) {
      //cambiar al estado de perdi
      aventura_objeto.estado = "WTP_B0";
    } else if (pantallas==3) {
      // cambiar al estado de gane
      aventura_objeto.estado = "WTP5";
    }

    if (juego.perdi) {
      pantallas=2;
    }
    if (juego.gane) {
      pantallas=3;
    }
  }

  void onClick() { // mousePressed
    if (pantallas==0) {
      pantallas=1;
    }
  }
  
  void keyPressed() {
    juego.teclapresionada();
  }


  void inicio() {
    textFont(fuente);
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
