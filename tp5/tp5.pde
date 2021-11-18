// VIDEO EXPLICATIVO EN YOUTUBE: https://youtu.be/x54jlW01H4w
Juego juego;//llamo a al objeto juego
Pantalla pantalla;
int pantallas;

void setup() {
  size(800, 600);
  juego = new Juego();//creo el objeto juego
  pantalla=new Pantalla();
}

void draw() {
  background(0);

  if (pantallas==0) {   
    pantalla.inicio();
  } else if (pantallas==1) {
    juego.dibujar();
  } else  if (pantallas==2) {
    pantalla.perdiste();
  } else if (pantallas==3) {
    pantalla.ganaste();
  }

  if (juego.perdi) {
    pantallas=2;
    juego=new Juego();
  }
  if (juego.gane) {
    pantallas=3;
    juego=new Juego();
  }
}

void mousePressed() {
  if (pantallas==0) {
    pantallas=1;
  }else if((pantallas==2)||(pantallas==3)){
    pantallas=0;
  }
}

void keyPressed() {
  this.juego.teclapresionada();
}
