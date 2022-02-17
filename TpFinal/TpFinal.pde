// VIDEO EXPLICATIVO EN YOUTUBE: https://www.youtube.com/watch?v=TdhIoGa8f_Y
Aventura aventura_objeto;

void setup() {
  size(800, 600);
  aventura_objeto = new Aventura();
}

void draw() {
  aventura_objeto.dibujar();
  // println(mouseY);
}

void mousePressed() {
  aventura_objeto.mousePressed();
}

void keyPressed() {
  aventura_objeto.keyPressed();
}
