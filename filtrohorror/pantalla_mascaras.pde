class Mascara {
  int cara;
  Mascara() {
  }
  void primera() {

    Rectangle[] faces = opencv.detect();
    for (int i = 0; i < faces.length; i++) {
      image(M1, faces[i].x-12, faces[i].y-11, faces[i].width+23, faces[i].height+23);
    }
  }
  void segunda() {

    Rectangle[] faces = opencv.detect();
    for (int i = 0; i < faces.length; i++) {
      image(M2, faces[i].x-92, faces[i].y-43, faces[i].width+193, faces[i].height+93);
    }
  }
  void tercera(){
   Rectangle[] faces = opencv.detect();
    for (int i = 0; i < faces.length; i++) {
      image(M3, faces[i].x-27, faces[i].y-30, faces[i].width+50, faces[i].height+50);
    }
  }
  void cuarta(){
   Rectangle[] faces = opencv.detect();
    for (int i = 0; i < faces.length; i++) {
      image(M4, faces[i].x-28, faces[i].y-33, faces[i].width+55, faces[i].height+58);
    }
  }
}
