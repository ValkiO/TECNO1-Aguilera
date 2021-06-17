PImage conejo, rito, buho, mama;
PImage tiger;
PImage winnie;
PImage piglet;
PImage burro;
float velocidad1;
float tam1;
float tam;
int velocidad = 2;
int color1, color2, color3, color4;
int pantallas=0;
int reloj1;
int reloj;
int ejey = 600, ejey2=700, ejey3=550, ejey4=550, ejey5=550, ejey6=650, ejey7=650, ejey8=500; 
int ejey9=650, ejey10=650, ejey11=650, ejey12=650, ejey13=650, ejey14=650, ejey15=650, ejey16=650, ejey17=650;
int ejey18=650, ejey19=650, ejey20=650, ejey21=800;
PImage caratula;
PFont fuente1;
void setup() {
  size(400, 400);
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
  velocidad1=0.3;
}
void draw() {
  reloj1++;
  if (reloj1 == 6) {
    reloj1=0;
  }
  if ((reloj1 == 5) || (reloj1 == 7)) {
    color2 = round(random(255));
  }
  if ((reloj1 == 5) || (reloj1 == 7)) {
    color3 = round(random(255));
  }
  if ((reloj1 == 5) || (reloj1 == 7)) {
    color4 = round(random(255));
  }
  textFont(fuente1, 48);
  //println(ejey13, ejey14, ejey16, ejey17);

  if (pantallas==0) {
    fill(255);
    textSize(50);
    background(0);
    text("Toque una tecla\n para empezar", 100, 100);
  }

  if (pantallas==1) {
    textSize(70);
    background(255);
    fill(color2, color3, color4); 

    image(caratula, 0, ejey2, height, width);
    text("Winnie The Pooh", 45, ejey);


    if (ejey > 60) {
      ejey = ejey - velocidad;
    }
    if (ejey2 > 0) {
      ejey2 = ejey2 - velocidad;
    }

    if ((ejey==60) && (ejey2==0)) {
      reloj++;
    }
    if (reloj==100) {
      ejey = ejey - velocidad;
      ejey2 = ejey2 - velocidad;
    }
  }
  if (reloj==100) {
    color1=0;
  }
  //imagenes principales
  image(tiger, 50, ejey3, 100, 150); 
  image(winnie, -5, ejey4, 250, 150);
  image(piglet, 270, ejey3, 100, 150);
  image(burro, 270, ejey4, 100, 150);
  //textos
  fill(color1);
  textSize(30);
  text("Winnie", 30, ejey6);
  text("Igor", 285, ejey6);
  text("Tiger", 50, ejey7);
  text("Piglet", 270, ejey7);
  text("P\nR\nI\nN\nC\nI\nP\nA\nL\nE\nS", height/2, ejey8);

  if ((ejey8 > 40) && (reloj==100)) {
    ejey8 = ejey8 - velocidad;
  }
  if ((ejey7 > 375) && (reloj==100)) {
    ejey7 = ejey7 - velocidad;
  }
  if ((ejey6 > 185) && (reloj==100)) {
    ejey6 =ejey6 - velocidad;
  }
  if ((ejey3 > 200) && (reloj==100)) {
    ejey3=ejey3 - velocidad;
  }
  if ((ejey4 > 20) && (reloj==100)) {
    ejey4=ejey4 - velocidad;
  }
  if ((ejey3==200) && (ejey4==20)) {
    reloj++;
  }
  if ((ejey6==185) && (ejey7==375)) {
    reloj++;
  }

  if (reloj==200) {
    ejey3=ejey3 - velocidad;
    ejey4=ejey4 - velocidad;
    ejey6 =ejey6 - velocidad;
    ejey7 = ejey7 - velocidad;
    ejey8 = ejey8 - velocidad;
  }
  //imagenes secundarias
  image(conejo, 40, ejey9, 100, 150); 
  image(mama, 270, ejey12, 100, 150);
  //textos 2
  text("Conejo", 30, ejey13);
  text("Mama", 270, ejey16);
  text("S\nE\nC\nU\nN\nD\nA\nR\nI\nO\nS", height/2, ejey17);

  if ((ejey9 > 40) && (reloj==200)) {
    ejey9 = ejey9 - velocidad;
  }
  
  if ((ejey12 > 40) && (reloj==200)) {
    ejey12 = ejey12 - velocidad;
  }
  if ((ejey13 > 220) && (reloj==200)) {
    ejey13 = ejey13 - velocidad;
  }
  
  if ((ejey16 > 220) && (reloj==200)) {
    ejey16 = ejey16 - velocidad;
  }
  if ((ejey17 > 40) && (reloj==200)) {
    ejey17 = ejey17 - velocidad;
  }

  if ((ejey13==220) && (ejey12==40) && (ejey9==40)) {
    reloj++;
  }
  if ((ejey16==220) && (ejey17==40)) {
    reloj++;
  }




  if (reloj==300) {
    ejey9=ejey9 - velocidad;
    ejey12=ejey12 - velocidad;
    ejey13=ejey13 - velocidad;
    ejey16=ejey16 - velocidad;
    ejey17=ejey17 - velocidad;
  }
  //imgs musica
  image(rito, 130, ejey10, 100, 100);

  //textos Musica
  text("Rito", 170, ejey14);
  textSize(tam); 
  text("MUSICA", 140, ejey18);
  if (ejey18<=440) {
    if (ejey18>60) {
      tam=tam + velocidad1;
    }
  }
  if ((ejey10 > 150) && (reloj==300)) {
    ejey10 = ejey10 - velocidad;
  }

  if ((ejey14 > 300) && (reloj==300)) {
    ejey14 = ejey14 - velocidad;
  }
  if ((ejey18 > 60) && (reloj==300)) {
    ejey18 = ejey18 - velocidad;
  }

  if (reloj==400) {
    ejey10=ejey10-velocidad;
    ejey14=ejey14-velocidad;
    ejey18=ejey18-velocidad;
  }

  if ((ejey10==150) && (ejey14==300) && (ejey18==60)) {
    reloj++;
  }

  image(buho, 160, ejey11, 100, 150);
  textSize(tam1);
  text("DIRECCION", 120, ejey19);
  textSize(30);
  text("Buho", 180, ejey15);


  if ((ejey11 > 90) && (reloj==400)) {
    ejey11 = ejey11 - velocidad;
  }
  if ((ejey15 > 300) && (reloj==400)) {
    ejey15 = ejey15 - velocidad;
  }

  if ((ejey19 > 60) && (reloj==400)) {
    ejey19 = ejey19 - velocidad;
  }

  if (ejey19<=440) {
    if (ejey19>60) {
      tam1=tam1 + velocidad1;
    }
  }
  if (reloj==500) {
    ejey11=ejey11-velocidad;
    ejey15=ejey15-velocidad;
    ejey19=ejey19-velocidad;
  }

  if ((ejey11==90) && (ejey15==300) && (ejey19==60)) {
    reloj++;
  }
  textSize(50);
  text("FIN", 180, ejey20);
textSize(35);
text("Presione para reiniciar", 100,ejey21);
  if ((ejey20 > 200) && (reloj==500)) {
    ejey20 = ejey20 - velocidad;
  }
if ((ejey21 > 250) && (reloj==500)) {
    ejey21 = ejey21 - velocidad;
  }



}



void keyPressed() {
  pantallas=1;
}
void mouseClicked(){
 if(reloj==500){
  pantallas=0;
}
}
  
