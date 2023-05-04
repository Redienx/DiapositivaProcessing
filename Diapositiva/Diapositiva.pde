int maxImages = 5;
int imageIndex = 0;

PImage [] images = new PImage[maxImages];

void setup(){
  size(1400,1080);
  for(int i = 0; i < images.length; i++){
    //Para llamar las imagenes se deben de guardar en la carpeta data
    //Se deben de llamar diapositiva_numero de como va a salir
    //Las imagenes deben de ser en formato jpg.
    images[i] = loadImage("diapositiva_" + i + ".jpg");
  }
}

void draw(){
  image(images[imageIndex], 100, 100);
}

void keyPressed(){
  if(keyCode == RIGHT){
    imageIndex++;
  }
  if(keyCode == LEFT){
    imageIndex--;
  }
}
