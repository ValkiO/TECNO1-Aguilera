class Aventura {
  String estado; 
  PantallaSimple [] pant; 
  PantallaSimple pantA; 
  PantallaSimple pantB;
  PantallaSimple pantC;


  PantallaCompleja pantComplejaA;

  PantallaCompleja pantComplejaC;

  int cantPantallas = 13; // le agregaría algunas pantallas de otra linea temporal

  //JUEGO
  Pantalla pantallaJuego;

  //CREDITOS
  Creditos creditos;

  Aventura() {
    estado = "WTP0";
    pant = new PantallaSimple[cantPantallas];
    pantA = new PantallaSimple("wtp_A.jpg");
    pantB = new PantallaSimple("wtp_B.jpg");
    pantC = new PantallaSimple("wtp_C.jpg");

    for (int i = 0; i<cantPantallas; i++) {
      pant[i] = new PantallaSimple("wtp" + i + ".jpg");
    }

    // inicializar pantCompleaja
    pantComplejaA = new PantallaCompleja("des1.jpg", "des2.jpg");

    pantComplejaC = new PantallaCompleja("desB1.jpg", "desB2.jpg");

    pantallaJuego = new Pantalla();

    creditos = new Creditos();
  }

  void dibujar() { //los background sobran

    //Hay un grupo de estados WTP -> Camino original
    //Hay un grupo de estados WTP_A -> Un camino Alternativo 

    for (int i = 0; i<cantPantallas; i++) {
      if (estado.equals("WTP" + i)) {
        pant[i].dibujar();
      }
    }

    if (estado.equals("WTP_A0")) {
      pantA.dibujar();
    }

    if (estado.equals("WTP_B0")) {
      pantB.dibujar();
    }

    if (estado.equals("WTP_C0")) {
      pantC.dibujar();
    }


    if (estado.equals("decision1")) {
      pantComplejaA.dibujar();
    }

    if (estado.equals("JUEGO")) {
      pantallaJuego.ejecutar();
    } 

    if (estado.equals("decision3")) {
      pantComplejaC.dibujar();
    }

    if (estado.equals("CREDITOS")) {
      creditos.creditos();
    }
  }

  void mousePressed() {
    boolean yaCambie = false;
    // CAMINO ORIGINAL
    for (int i = 0; i<cantPantallas; i++) {
      if (estado.equals("WTP" + i) && !yaCambie) {
        pant[i].button.onClick("WTP" + (i + 1));
        yaCambie = true;
      }
    }

    // TENGO QUE INTERRUMPIR?

    if ( estado.equals("WTP2") && yaCambie) {
      // estado = tomaDeDecision1
      estado = "decision1";
    }

    if ( estado.equals("WTP5") && yaCambie) {
      // estado = tomaDeDecision2
      estado = "JUEGO";
    }

    if ( estado.equals("WTP8") && yaCambie) {

      estado = "decision3";
    }


    //CAMINO ALTERNATIVO

    if (estado.equals("WTP_A0") && !yaCambie) {
      pantA.button.onClick("FINAL");
      yaCambie = true;
    }

    if (estado.equals("WTP_B0") && !yaCambie) {
      pantB.button.onClick("FINAL");
      yaCambie = true;
    }

    if (estado.equals("WTP_C0") && !yaCambie) {
      pantC.button.onClick("FINAL");
      yaCambie = true;
    }


    //LAS TOMAS DE DECISION
    if (estado.equals("decision1") && !yaCambie) {
      pantComplejaA.onClick( "WTP2", "WTP_A0" );
    }

    if (estado.equals("decision3") && !yaCambie) {
      pantComplejaC.onClick("WTP_C0", "WTP8");
    }

    //JUEGO
    if (estado.equals("JUEGO") && !yaCambie) {
      pantallaJuego.onClick();
    }

    // REINICIAR
    if (estado.equals("FINAL")) {
      aventura_objeto = new Aventura();
      //el reinicio del profe
    }

    if (estado.equals("WTP13")) {
      estado = "CREDITOS";
    }

    /* si el estado = al de mi pantalla compleja{
     pasar al estado 14
     sino voy a pasar al siguiente
     }*/

    println(estado);
  }

  void keyPressed() {
    pantallaJuego.keyPressed();
  }
}
