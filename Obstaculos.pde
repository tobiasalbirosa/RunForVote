class Obstaculo {
  float ancho=35;
  float alto=35;
  float[] posX =new float[50];
  float[] posY=new float[50];
  float[] posY2=new float[50];
  float [] posX2 = new float [50];
  boolean pausa;
  void setup() {
    for (int i=0;i<50;i++) {
      posX[i]= 2000+random(290, 300)*i;
      posY[i]= height-100-ancho/2;
      posX2[i] = 2000+ random (290, 300+i);
    }
    pausa=false;
  }
  void mover() {
    if (!pausa) {
      for (int i=0;i<50;i++) {

        posX[i]-=8;
      }
    }
  }
  void dibujar() {
    for (int i=0;i<50;i++) {
      fill(0);
      rect(posX[i], posY[i], ancho, alto);
    }
  }
  void chocar () {
    for (int i=0; i<50; i++) {
      if (posX[i]-ancho/2 <= personaje.posX+ancho/2 && posX[i]+ancho/2 >= personaje.posX-ancho/2 && posY[i]-alto/2 <= personaje.posY+alto/2) {
        noFill();
        ellipse(posX[i], posY[i], 40, 40);
        posX[i]= -10;
        chocar=true;
        restarVida=true;
        pausa=true;
      }
    }
  }
}
