class Pantalla {
  int ventana;
  Pantalla() {
  }
  void cero() {
    background(0);
    pushMatrix();
    scale(.5);
    image (Ini, 0, 0);
    popMatrix();
    text("Presiona 'Espacio' para comenzar", 70, 190); 
    if (keyCode == 32) {
      ventana=1;
    }
  }
  void uno() {
    opencv.loadImage(video);
    image(video, 0, 0 );
    if (!I) {
      pushMatrix();
      scale(.5);
      image(Ins, 0, 0);
      text("presiona 'X' para salir", 20, 450);
      popMatrix();
    }
    if (I=true && keyCode==37) {
      mask.primera();
    } else {
      if (keyCode==38) {
        mask.segunda();
        I=true;
      }
      if (keyCode==39) {
        mask.tercera();
        I=true;
      }

      if (keyCode==40) {
        mask.cuarta();
        I=true;
      }
    }
    if (key=='x' || key == 'X') {
      exit();
    }
    //opciones
  }
  void dos() {
    //37,38,39,40
  }

  void display() {
    switch(this.ventana) {
    case 0:
      cero();
      break;
    case 1:
      uno();
      video.start();


      break;
    case 2:
      dos();
      break;
    }
  }
  void teclado() {
    if (key == 'c' || key == 'C') {
      saveFrame();
    }
  }
}
