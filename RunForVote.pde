boolean inicio = true;
boolean  tuto = false; 
boolean nivel1 = false;
boolean  nivel2=false;
boolean perdiste1 = false;
boolean ganaste = false;
boolean pasaste = false;
boolean chocar;
boolean restarVida;
boolean salto;
Pantallass pantallass;
Personaje personaje;
Obstaculo obstaculo;
void setup() {
  rectMode (CENTER); 
  background(255);
  size(1200, 400);
  noStroke();
  pantallass = new Pantallass ();
  obstaculo = new Obstaculo ();
  obstaculo.setup();
  personaje = new Personaje ();
  pantallass.inicio();
}
void draw() { 
  if (mousePressed) {    
    if (inicio == true && mouseX <= 675 && mouseX >=550 && mouseY <=350 && mouseY >= 280  ) {
      inicio = false;
      tuto = true;
      pantallass.tuto ();
    }
    if (tuto == true && mouseX >= 910 && mouseY >=355) {
      tuto = false;
      nivel1 = true;
      frameCount = 0;
    }
    if (perdiste1) {
      pantallass.perdiste ();
    }
    if (perdiste1 == true && mouseX >= 410 && mouseX<= 900 && mouseY <= 290 && mouseY >= 240) {
      perdiste1 = false;
      personaje.vida = 3;
      inicio = true;
      pantallass.inicio ();
      frameCount = 0;
    }
    if (pasaste == true && mouseX >= 410 && mouseX<= 900 && mouseY <= 290 && mouseY >= 240) {
      pasaste = false;
      personaje.vida = 3;
      nivel2 = true;
      frameCount = 0;
      pantallass.nivel2 ();
    }
    if (ganaste == true && mouseX>=450 && mouseX<=850 && mouseY>=200 && mouseY <= 300  ) {
      ganaste = false;
      inicio = true;
      pantallass.inicio ();
    }
  }
  //NIVEL 1
  if (nivel1) {
    pantallass.nivel1 ();
    if (personaje.vida <= 0) {
      nivel1 = false;
      perdiste1 = true;
      pantallass.perdiste ();
    }
    if (personaje.vida >= 0 && frameCount/2 == 600) {
      nivel1 = false;
      pasaste = true;
      pantallass.pasaste ();
    }
  }
  // NIVEL 2
  if (nivel2) {
    pantallass.nivel2 ();
    if (personaje.vida >= 0 && frameCount/2 == 0) {
      nivel2 = false;
      ganaste = true;
      pantallass.ganaste ();
    }
    if (personaje.vida <= 0) {
      nivel2 = false;
      perdiste1 = true;
      pantallass.perdiste ();
    }
  }
}
void keyPressed () {
  personaje.keyPressed ();
}
