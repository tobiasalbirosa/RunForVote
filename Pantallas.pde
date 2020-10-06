class Pantallass {
  PImage inicio, tuto, pasaste, perdiste, ganaste;
  Pantallass () {
    inicio = loadImage(  "play-pantalla.jpg");
    tuto = loadImage ("TUTO.fw.png");
    perdiste = loadImage ("perdisteeeee.jpg");
    pasaste = loadImage ("pasaste.png");
    ganaste = loadImage ("ganaste.jpg");
  }
  void pasaste () {
    image (pasaste, 0, 0, width, height);
    frameCount = 0;
    personaje.vida = 3;
  }
  void ganaste () {
    image (ganaste, 0, 0, width, height);
    frameCount = 0;
    personaje.vida = 3;
  }
  void inicio () {
    image (inicio, 0, 0, width, height);
    for (int i=0;i<50;i++) {
      obstaculo.posX[i]= 2000+random(290, 300)*i;
      frameCount = 0;
      personaje.vida = 3;
    }
  }
  void tuto () {
    image (tuto, 0, 0, width, height);
  }
  void nivel1 () {
    background (255  );
    fill(0);
    textSize(25);
    text("Puntaje= "+ frameCount/2, 1000, 40);
    text ("Vidas="+personaje.vida, 50, 50);
    //Piso
    rect(width/2, 350, width, 100);
    //PersonajeFunciones
    personaje.vidas ();
    personaje.mover(obstaculo);
    personaje.dibujar();
    //ObstaculosFunciones
    obstaculo.chocar();
    obstaculo.mover();
    obstaculo.dibujar();
  }
  void nivel2 () {
    background (255);
    fill(0);
    textSize(25);
    text("Puntaje= "+ frameCount/2, 1000, 40);
    text ("Vidas="+personaje.vida, 50, 50);
    //Piso
    rect(width/2, 350, width, 100);
    //PersonajeFunciones
    personaje.vidas ();
    personaje.mover(obstaculo);
    personaje.dibujar();
    //ObstaculosFunciones
    obstaculo.dibujar();
    obstaculo.mover();
    obstaculo.chocar();
  }
  void perdiste () {
    image (perdiste, 0, 0, width, height);
  }
}
