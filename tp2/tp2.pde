PFont Gato;
PImage EnsombreradoVacia;
PImage Ensombrerado2;
PImage Ensombrerado;
boolean EnsombreradoOjos = false;
void setup() {
  size(800, 550);
  Ensombrerado2 = loadImage("EnsombreradoTurbina.jpg");
  EnsombreradoVacia = loadImage("Ensombrerado.jpg"); 
  Ensombrerado = loadImage("EnsombreradoOriginal.jpg"); 
  Gato = loadFont("CooperBlack-48.vlw");
}


void draw() {
  background(200);
  image(Ensombrerado, 0, 0);
  textFont(Gato, 30);
  text("El gato ensombrerado", 500, 200 );

  if (EnsombreradoOjos == false) {
    image(Ensombrerado2, 400, 0);
  } else {
    image(EnsombreradoVacia, 400, 0);

    text("El gato\n ensombrerado", 550, 100);
    text("Dr.Seuss", 600, 470);
  }
}
  void mouseClicked() {

    if (EnsombreradoOjos == false) {
      EnsombreradoOjos = true;
    } else {
      EnsombreradoOjos = false;
    }
  }
