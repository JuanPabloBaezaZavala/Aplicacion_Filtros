import gab.opencv.*;
import processing.video.*;
import java.awt.Rectangle;
PImage M1,M2,M3,M4,Ini, Ins;
boolean I=false;

Capture video;
OpenCV opencv;

Pantalla pan;
Mascara mask;

void setup() {
  size(640, 480);
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  
//PANTALLAS 
  pan = new Pantalla();
  mask = new Mascara();

 //MASCARAS
  M1 = loadImage("dracula.png");
  M2 = loadImage("penny.png");
  M3 = loadImage("calavera.png");
  M4 = loadImage("freddy.png");
  Ini = loadImage("inicio.png");
  Ins = loadImage("instrucciones.png");
}

void draw() {
  scale(2);
  pan.display();
}

void captureEvent(Capture c) {
  c.read();
}
void keyPressed(){
pan.teclado();
}
