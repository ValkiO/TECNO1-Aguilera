boolean avanzar = false;
boolean reinicio = false;
boolean creditos = false;
String creditos1="Creditos";
void inicio() {
  strokeWeight (1);
  fill (#A55E17);
  ellipse (600, 80, 180, 100);
  fill(0);
  textFont(fuente1, 48);
  textSize (50);
  text("INICIO", 560, 97);
}
void avanzar () {
  strokeWeight (2);
  fill (#0AC3CB);
  ellipse (750, 280, 60, 60);
  fill(0);
  textSize (40);
  text(">", 739, 294);
  if (mouseX > 680 && mouseX < 800 && mouseY > 220 && mouseY < 380) {
    avanzar = true;
  }
}

void reinicio () {
  strokeWeight (2);
  fill (#0AC3CB);
  ellipse (700, 400, 150, 65);
  fill(0);
  textSize (40);
  text("Reiniciar", 655, 412);
  if (mouseX > 550 && mouseX < 750 && mouseY > 360 && mouseY <430) {
    reinicio = true;
  }
}
String creditosboton() {
  strokeWeight (1);
  fill (#A55E17);
  ellipse (600, 200, 180, 100);
  fill(0);
  textSize (40);
  if (mouseX > 510 && mouseX < 690 && mouseY > 150 && mouseY < 250) {
    creditos=true;
  }
  return creditos1;
}

void mouseClicked() {
  if (imgP [2] == 1) {
    if (reinicio == true) {

      imgP [2] = imgP [0];
      imgP [0] = 0;
      reinicio = false;
    }
  } 
  if (imgP [3] == 1) {
    if (reinicio == true) {

      imgP [3] = imgP [0];
      imgP [0] = 0;
      reinicio = false;
    }
  }
  if (imgP[1] == 2) {
    if (avanzar == true) {
      imgP [1] = 3;
      avanzar = false;
    }
  }
  if ((imgP[4] == 3 ) && (mouseX > 0 && mouseX < 800 && mouseY >300 && mouseY < 600)) {
    imgP [4] = imgP [6] = 1;

    imgP [0] = 0;
    imgP [1] = 0;
    imgP [4] = 0;
  }
  if ((imgP[0] == 2 ) && (mouseX > 0 && mouseX < 800 && mouseY >300 && mouseY < 600)) {
    imgP [0] = imgP [2] = 1;

    imgP [0] = 0;
  }
  if (imgP[1] == 1) {
    if (avanzar == true) {
      imgP [1] = 2;
      avanzar = false;
    }
  }
  if ((imgP[1] == 3 ) && (mouseX > 0 && mouseX < 800 && mouseY >0 && mouseY < 200)) {
    imgP [1] = imgP [3] = 1;

    imgP [0] = 0;
    imgP [1] = 0;
  }
  if ((imgP[1] == 3 ) && (mouseX > 0 && mouseX < 800 && mouseY >300 && mouseY < 600)) {
    imgP [1] = imgP [4] = 1;

    imgP [0] = 0;
  }
  if (imgP[4] == 2) {
    if (avanzar == true) {
      imgP [4] = imgP [4] + 1;
      avanzar = false;
    }
  }
  if (imgP[4] == 1) {
    if (avanzar == true) {
      imgP [4] = imgP [4] + 1;
      avanzar = false;
    }
  }
  if ((imgP[4] == 3 ) && (mouseX > 0 && mouseX < 800 && mouseY >0 && mouseY < 200)) {
    imgP [4] = imgP [5] = 1;

    imgP [0] = 0;
    imgP [4] = 0;
    imgP [1] = 0;
  }
  if (imgP [5] == 1) {
    if (reinicio == true) {
      imgP [5] = imgP [0];
      imgP [0] = 0;
      reinicio = false;
    }
  }
  if (imgP[6] == 3) {
    if (avanzar == true) {
      imgP [6] = 4;
      avanzar = false;
    }
  }
  if (imgP[6] == 4) {
    if (avanzar == true) {
      imgP [6] = 5;
      avanzar = false;
    }
  }

  if (imgP[6] == 2) {
    if (avanzar == true) {
      imgP [6] = 3;
      avanzar = false;
    }
  }
  if (imgP[6] == 1) {
    if (avanzar == true) {
      imgP [6] = 2;
      avanzar = false;
    }
  }

  if (imgP [0] == 1) {  
    if (avanzar == true) {
      imgP [0] = imgP [0] = 2;
      avanzar = false;
    }
  }
  if ((imgP[0] == 0) && (mouseX > 420 && mouseX < 780 && mouseY > 0 && mouseY < 180)) {
    imgP [0] = 1;
  }
    if ((imgP[0] == 0) && (mouseX > 510 && mouseX < 690 && mouseY > 150 && mouseY < 250)) {
    imgP [0] = imgP[6]=5;
    pantallas=1;
  }
  if ((imgP[0] == 2 ) && (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 200)) {
    imgP [0] = imgP [1] = 1;

    imgP [0] = 0;
  }
}
