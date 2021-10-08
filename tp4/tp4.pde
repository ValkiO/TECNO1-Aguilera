//https://youtu.be/WJ0sjqirDYE
int ndp = 14; 
PImage[] img = new PImage [20]; 
int [] imgP = new int [ndp]; 

void setup () {
  size(800, 600);
  fuente1=loadFont("BodoniMTCondensed-48.vlw");
  //textMode(CENTER);
  caratula=loadImage("Kratula.jpg");
  tiger=loadImage("tiger.jpg");
  winnie=loadImage("winnie.jpg");
  piglet=loadImage("piglet.jpg");
  burro=loadImage("burro.jpg");
  conejo=loadImage("conejo.jpg");
  rito=loadImage("rito.jpg");
  buho=loadImage("buho.jpg");
  mama=loadImage("mama.jpg");

  
  for (int i = 0; i < img .length; i++) {
    img [i] = loadImage ("wtp" + i + ".jpg");
  }
}
void draw (){
  if (imgP [0] == 0) {
    image(img[0], 0, 0, 800, 600); 

    inicio();
    textFont(fuente1, 48);
    text(creditosboton(), 555, 215);
  }
  println (mouseX, mouseY);
  println (imgP);
  if (imgP [0] == 1) {
    image(img[1], 0, 0, 800, 600);
    avanzar();
  }
  if (imgP [0] == 2) {

    image(img[3], 0, 300, 800, 300);
    image(img[5], 0, 0, 800, 300);
    strokeWeight (15);
    line(0, 300, 800, 300);
    strokeWeight (30);
    noFill();
    rect (0, 0, 800, 600);
  }
  if (imgP [1] == 1) {
    image(img[6], 0, 0, 800, 600);
    avanzar();
  }
  if (imgP [2] == 1) {
    image(img[4], 0, 0, 800, 600);
    reinicio();
  }
  if (imgP [1] == 2) {
    image(img[7], 0, 0, 800, 600);
    avanzar();
  }
  if (imgP [1] == 3) {
    image(img[8], 0, 0, 800, 300);
    image(img[10], 0, 300, 800, 300);
    strokeWeight (15);
    line(0, 300, 800, 300);
    strokeWeight (30);
    noFill();
    rect (0, 0, 800, 600);
  }
  if (imgP [3] == 1) {
    image(img[9], 0, 0, 800, 600);
    reinicio();
  }



  if (imgP [4] == 2) {
    image(img[12], 0, 0, 800, 600);
    avanzar();
  }
  if (imgP [4] == 1) {
    image(img[11], 0, 0, 800, 600);
    avanzar();
  }
  if (imgP [4] == 3) {
    image(img[13], 0, 0, 800, 300);
    image(img[15], 0, 300, 800, 300);
    strokeWeight (15);
    line(0, 300, 800, 300);
    strokeWeight (30);
    noFill();
    rect (0, 0, 800, 600);
  }
  if (imgP [5] == 1) {
    image(img[14], 0, 0, 800, 600);
    reinicio();
  }
  if (imgP [6] == 1) {
    image(img[16], 0, 0, 800, 600);
    avanzar();
  }
  if (imgP [6] == 2) {
    image(img[17], 0, 0, 800, 600);
    avanzar();
  }
  if (imgP [6] == 3) {
    image(img[18], 0, 0, 800, 600);
    avanzar();
  }
  if (imgP [6] == 4) {
    image(img[19], 0, 0, 800, 600);
    text(creditosboton(), 555, 215);
  }
  if (imgP [6] == 5) {
    creditos();
  }
} 
