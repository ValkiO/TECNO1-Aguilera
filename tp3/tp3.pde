//URL YOUTUBE: https://youtu.be/R8qYgggCuqM
int tam=30;
float dist=90;
PImage imagen1, imagen2;
color color1, color2;
int fondo=0;
void setup() {
  size(500, 500);
  imagen1=loadImage("imagen2.png");
  imagen2=loadImage("imagen3.png");
  color2=#6D91F0;
  color1=#1ED63E;
}

void draw() {
  translate(22, 60);
  if (fondo==0) {
    image(imagen1, -30, -60, 600, 600);
  }
  if (fondo==1) {
    image(imagen2, -30, -60, 600, 600);
  }
  for (int k=0; k<16; k++) {
    for (int i=0; i<11; i++) {
      stroke(0);
      if (k%2 == 0) {
        fill(color1);
      } else {
        noFill();
        noStroke();
      }
      rect(k*tam, i*tam, tam, tam);
    }
  }
  for (int h=0; h<11; h++) {
    strokeWeight(1);
    for (int j=0; j<16; j++) {
      if ((h%2 == 0) && (j%2==0)) {
        stroke(255);
      } else {
        noStroke();
      }
      line(j*tam+1, h*tam, j*tam+29, h*tam);
    }
  }
  for (int a=0; a<11; a++) {
    for (int f=0; f<16; f++) {
      strokeWeight(1);
      if ((a%2 == 0) && (f%4==0)) {
        stroke(255);
      } else {
        noStroke();
      }
      line(f*tam, a*tam, f*tam, a*tam+29);
    }
  }
  for (int q=0; q<10; q++) {
    strokeWeight(1);
    for (int y=0; y<16; y++) {
      if ((q%2 == 0) && (y%4==0)) {
        stroke(255);
      } else {
        noStroke();
      }
      line(y*tam+30, q*tam+30, y*tam+30, q*tam+60);
    }
  }
  for (int l=0; l<11; l++) {
    for (int p=0; p<16; p++) {
      strokeWeight(1);
      if ((l%2 == 0) && (p%4==0)) {
        stroke(255);
      } else {
        noStroke();
      }
      line(p*tam+dist, l*tam+1, p*tam+dist, l*tam+29);
    }
  }
  for (int n=0; n<10; n++) {
    for (int v=0; v<16; v++) {
      if ((n%2 == 0) && (v%4==0)) {
        stroke(255);
      } else {
        noStroke();
      }
      line(v*tam+60, n*tam+30, v*tam+60, n*tam+60);
    }
  }
  for (int c=0; c<11; c++) {
    for (int h=0; h<16; h++) {
      if ((c%2==0)&&(h%4==0)) {
        fill(255);
      } else {
        noFill();
      }
      rect(h*30, c*30-3, 4, 8);
    }
  }
  for (int d=0; d<11; d++) {
    for (int h=0; h<16; h++) {
      if ((d%2==0) && (h%4==0)) {
        fill(0);
      } else {
        noFill();
      }
      rect(h*30-4, d*30-3, 4, 8);
    }
  }
  for (int d=0; d<11; d++) {
    for (int h=0; h<16; h++) {
      if ((d%2==0) && (h%4==0)) {
        fill(0);
      } else {
        noFill();
      }
      rect(h*30+30, d*30-3, 4, 8);
    }
  }
  for (int d=0; d<11; d++) {
    for (int h=0; h<16; h++) {
      if ((d%2==0) && (h%4==0)) {
        fill(255);
      } else {
        noFill();
      }
      rect(h*30+26, d*30-3, 4, 8);
    }
  }
  for (int d=0; d<11; d++) {
    for (int h=0; h<16; h++) {
      if ((d%2==0) && (h%4==0)) {
        fill(0);
      } else {
        noFill();
      }
      rect(h*30+26, d*30-3+30, 4, 8);
    }
  }
  for (int d=0; d<11; d++) {
    for (int h=0; h<16; h++) {
      if ((d%2==0) && (h%4==0)) {
        fill(255);
      } else {
        noFill();
      }
      rect(h*30+30, d*30-3+30, 4, 8);
    }
  }
  for (int d=0; d<11; d++) {
    for (int h=0; h<16; h++) {
      if ((d%2==0) && (h%4==0)) {
        fill(255);
      } else {
        noFill();
      }
      rect(h*30-3, d*30-3+30, 4, 8);
    }
  }
  for (int d=0; d<11; d++) {
    for (int h=0; h<16; h++) {
      if ((d%2==0) && (h%4==0)) {
        fill(0);
      } else {
        noFill();
      }
      rect(h*30+1, d*30-3+30, 4, 8);
    }
  }
  for (int d=0; d<11; d++) {
    for (int h=0; h<16; h++) {
      if ((d%2==0) && (h%4==0)) {
        fill(0);
      } else {
        noFill();
      }
      rect(h*30-4+61, d*30-3, 4, 8);
    }
  }
  for (int d=0; d<11; d++) {
    for (int h=0; h<16; h++) {
      if ((d%2==0) && (h%4==0)) {
        fill(255);
      } else {
        noFill();
      }
      rect(h*30+61, d*30-3, 4, 8);
    }
  }
  for (int d=0; d<11; d++) {
    for (int h=0; h<16; h++) {
      if ((d%2==0) && (h%4==0)) {
        fill(0);
      } else {
        noFill();
      }
      rect(h*30+90, d*30-3, 4, 8);
    }
  }
  for (int d=0; d<11; d++) {
    for (int h=0; h<16; h++) {
      if ((d%2==0) && (h%4==0)) {
        fill(255);
      } else {
        noFill();
      }
      rect(h*30+90-4, d*30-3, 4, 8);
    }
  }
  for (int d=0; d<11; d++) {
    for (int h=0; h<16; h++) {
      if ((d%2==0) && (h%4==0)) {
        fill(0);
      } else {
        noFill();
      }
      rect(h*30+90-4, d*30-3+30, 4, 8);
    }
  }
  for (int d=0; d<11; d++) {
    for (int h=0; h<16; h++) {
      if ((d%2==0) && (h%4==0)) {
        fill(255);
      } else {
        noFill();
      }
      rect(h*30+90, d*30-3+30, 4, 8);
    }
  }
  for (int d=0; d<11; d++) {
    for (int h=0; h<16; h++) {
      if ((d%2==0) && (h%4==0)) {
        fill(0);
      } else {
        noFill();
      }
      rect(h*30+60, d*30-3+30, 4, 8);
    }
  }
  for (int d=0; d<11; d++) {
    for (int h=0; h<16; h++) {
      if ((d%2==0) && (h%4==0)) {
        fill(255);
      } else {
        noFill();
      }
      rect(h*30+60-4, d*30-3+30, 4, 8);
    }
  }
  println(mouseX);
  println(mouseY);
}

void mouseClicked() {
  color1=color2;
  fondo=1;
}
void keyPressed() {
  color1=#1ED63E;
  fondo=0;
}
