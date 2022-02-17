class Creditos {
  int ndp = 14; 
  int [] imgP = new int [ndp]; 
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
  int ejey = 800, ejey2=700, ejey3=800, ejey4=800, ejey5=800, ejey6=900, ejey7=900, ejey8=900; 
  int ejey9=650, ejey10=650, ejey11=650, ejey12=650, ejey13=800, ejey14=800, ejey15=800, ejey16=800, ejey17=650;
  int ejey18=650, ejey19=650, ejey20=650, ejey21=800;
  PImage caratula;
  PFont fuente1;

  Creditos () {
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
  }

  void creditos() {
    imageMode(CORNER);
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

    if (true) {
      textSize(70);
      background(255);
      fill(color2, color3, color4); 

      image(caratula, 0, ejey2, 800, 700);
      text("Winnie The Pooh", 400, ejey);

      if (ejey > 60) {
        ejey = ejey - velocidad;
      }
      if (ejey2 > -20) {
        ejey2 = ejey2 - velocidad;
      }

      if ((ejey==60) && (ejey2==-20)) {
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
    //textos
    fill(color1);
    textSize(30);
    text("Winnie", 170, ejey6);
    text("Igor", 600, ejey6);
    text("Tiger", 170, ejey7);
    text("Piglet", 600, ejey7);
    text("P\nR\nI\nN\nC\nI\nP\nA\nL\nE\nS", 400, ejey8);
    //imagenes principales
    image(tiger, 140, ejey3, 100, 150); 
    image(winnie, 75, ejey4, 250, 150);
    image(piglet, 570, ejey3, 100, 150);
    image(burro, 570, ejey4, 100, 150);

    if ((ejey8 > 40) && (reloj==100)) {
      ejey8 = ejey8 - velocidad;
    }
    if ((ejey7 > 375) && (reloj==100)) {
      ejey7 = ejey7 - velocidad;
    }
    if ((ejey6 > 200) && (reloj==100)) {
      ejey6 =ejey6 - velocidad;
    }
    if ((ejey3 > 400) && (reloj==100)) {
      ejey3=ejey3 - velocidad;
    }
    if ((ejey4 > 20) && (reloj==100)) {
      ejey4=ejey4 - velocidad;
    }
    if ((ejey3==400) && (ejey4==20)) {
      reloj++;
    }
    if ((ejey6==200) && (ejey7==375)) {
      reloj++;
    }

    if (reloj==200) {
      ejey3=ejey3 - velocidad;
      ejey4=ejey4 - velocidad;
      ejey6 =ejey6 - velocidad;
      ejey7 = ejey7 - velocidad;
      ejey8 = ejey8 - velocidad;
    }
    //textos 2
    text("Conejo", 170, ejey13);
    text("Mama", 590, ejey16);
    text("S\nE\nC\nU\nN\nD\nA\nR\nI\nO\nS", 400, ejey17);
    //imagenes secundarias
    image(conejo, 150, ejey9, 100, 150); 
    image(mama, 570, ejey12, 100, 150);


    if ((ejey9 > 100) && (reloj==200)) {
      ejey9 = ejey9 - velocidad;
    }

    if ((ejey12 > 100) && (reloj==200)) {
      ejey12 = ejey12 - velocidad;
    }
    if ((ejey13 > 280) && (reloj==200)) {
      ejey13 = ejey13 - velocidad;
    }

    if ((ejey16 > 280) && (reloj==200)) {
      ejey16 = ejey16 - velocidad;
    }
    if ((ejey17 > 80) && (reloj==200)) {
      ejey17 = ejey17 - velocidad;
    }

    if ((ejey13==280) && (ejey12==100) && (ejey9==100)) {
      reloj++;
    }
    if ((ejey16==280) && (ejey17==80)) {
      reloj++;
    }




    if (reloj==300) {
      ejey9=ejey9 - velocidad;
      ejey12=ejey12 - velocidad;
      ejey13=ejey13 - velocidad;
      ejey16=ejey16 - velocidad;
      ejey17=ejey17 - velocidad;
    }
    //textos Musica
    text("Rito",400, ejey14);
    textSize(tam); 
    text("MUSICA", 400, ejey18);
    //imgs musica
    image(rito, 350, ejey10, 100, 100);

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

    textSize(tam1);
    text("DIRECCION", 400, ejey19);
    textSize(30);
    text("Buho", 400, ejey15);
    image(buho, 350, ejey11, 100, 150);

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
    text("FIN", 400, ejey20);
    textSize(35);
    text("Gracias por ver", 400, ejey21);
    
    if ((ejey20 > 200) && (reloj==500)) {
      ejey20 = ejey20 - velocidad;
    }
    if ((ejey21 > 250) && (reloj==500)) {
      ejey21 = ejey21 - velocidad;
    }

    if (ejey21==250) {
      aventura_objeto.estado = "FINAL";
      for (int i=0; i<ndp; i++) {
        imgP[i]=0;
      }
      reloj1=0;
      reloj=0;
      ejey = 800;
      ejey2=700;
      ejey3=800;
      ejey4=800;
      ejey5=800;
      ejey6=900;
      ejey7=900;
      ejey8=900; 
      ejey9=650;
      ejey10=650;
      ejey11=650;
      ejey12=650;
      ejey13=800;
      ejey14=800;
      ejey15=800;
      ejey16=800;
      ejey17=650;
      ejey18=650;
      ejey19=650;
      ejey20=650;
      ejey21=800;
      tam=0;
      tam1=0;
      velocidad = 2;
    }
  }
}
