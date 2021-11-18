class Juego {

  float tiempoLimite;
  boolean gane, perdi;
  PImage fondo;
  int tiempo;
  int delayTiempo;
  Miel honey;
  Abeja [] bee;//llamo al objeto abejas
  Pooh oso;

  int cantAbejas=8;//defino la cantidad de abejas que quiero

  Juego() {
    construir();
  }

  void construir() {
    fondo = loadImage("fondo4.jpg");
    // si no gane y no perdi ---> estoy jugando
    gane = false; 
    perdi = false;
    tiempo=36;

    this.oso=new Pooh ();
    this.bee=new Abeja[cantAbejas];//llamo a un arreglo de las abejas

    // el tiempo limite es 30 segundos + el timpo que ya paso antes de que arrancara el juego
    tiempoLimite = millis()/1000.0 + 20; 

    honey = new Miel(width/2, -50);

    for (int i=0; i<cantAbejas; i++) {
      int posX = round(random(width));//defino las variables de la pos X e Y de la abeja
      int posY = round(random(-1000));

      this.bee[i]= new Abeja(posX, posY);//creo el objeto de abejas
    }
  }

  void dibujar() {
    image (fondo, 0, 0, 800, 600);
    if (millis()/1000.0 > tiempoLimite) {
      //tiro la miel
      //background(255, 250, 90);

      honey.dibujar();
      honey.caer();
    }

    for (int i=0; i<cantAbejas; i++) {//dibujo los objetos de la abeja
      this.bee[i].dibujar();
      this.bee[i].caer();
    }
    this.oso.dibujar();

    colisionar();

    if (honey.estoyRota) {
      perdi = true;
    }

    delayTiempo=(delayTiempo+1)%30;

    if ((delayTiempo==0)&&(tiempo>0)) {
      tiempo=tiempo-1;
    }
    fill (255,255,255);
    textSize(25);
    text("Tiempo  "+tiempo, width-100, 100);
  }

  void colisionar() {
    boolean jugadorTocoLaMiel = false;

    float distOsoMiel = dist(oso.x, oso.y, honey.x, honey.y);

    jugadorTocoLaMiel = distOsoMiel <= honey.tam/2 + 40;

    if (jugadorTocoLaMiel) {
      //Gané
      gane = true;
    }

    for (int i=0; i<cantAbejas; i++) {
      float distOsoAbeja = dist(oso.x, oso.y, bee[i].x, bee[i].y);
      if (distOsoAbeja <= 20 + 40) {
        perdi = true;
      }
    }
  }
  void teclapresionada() {
    this.oso.teclapresionada();
  }
}
