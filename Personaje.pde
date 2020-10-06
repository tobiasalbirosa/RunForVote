class Personaje {
  float ancho=55;
  float alto=55;
  float posX=100;
  float posY=height-100-ancho/2;
  float velocidad;
  int vida = 3; 
  void mover( Obstaculo aux ) {
    if (salto) {
      posY = posY - velocidad;
      if (posY >= height-100-ancho/2 ) {
        salto = false;
      }
      if (posY <= 200) {
        velocidad = velocidad*-1;
      }
      if (posY <= 150) {
       posY = 170;
      }
      aux.pausa=false;
    }
  }
  void dibujar() {
    fill(255, 0, 0);
    ellipse(posX, posY, ancho, alto);
  }
  void keyPressed () {
    if (keyCode == ' ' && salto == false) {
      velocidad = 5;
      salto = true;
    }
  }
  void vidas() {
    for (int i=0;i<50;i++) {
      if (chocar&&restarVida) {
        if (vida==0) {
          noLoop();

          text("PERDISTE", 600, 200);
        }
        vida--;
        restarVida=false;
      }
    }
  }
}
