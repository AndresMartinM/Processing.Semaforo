// Semaforo 24-03-2023
// AndresMartinM
// Processing 4.1
// Santiago de Chile

int tActual = 0;//contador de tiempo

int durR = 6;//duracion de rojo
int durA = 2;//duracion de amarillo
int durV = 4;//duracion de verde

color rojo = color(255,0,0);
color amarillo = color(250,210,0);
color verde = color(0,255,0);

void setup(){
  size(800,400);//tamano de la pantalla
  background(255);//pintamos el fondo
  frameRate(1); //taza de actualización de la app
  stroke(0, 0);//hacemos los bordes transparentes
}

int ciclo = durR + durA + durV;//suma de los 3 tiempos

void draw(){
  
  //comprueba que el tiempo este dentro de los limites
  if (tActual < ciclo && tActual >= 0){
    tActual++;//por cada frame suma 1 a la variable
  } else {
    tActual = 0;//si nos salimos de los limites reseteamos a 0
  }
  
  //comprobamos el tiempo en que estamos y asignamos un color
  if (tActual < durV){
    fill(verde);
  }else if(tActual < durV + durA){
    fill(amarillo);
  }else if(tActual < ciclo){
    fill(rojo);
  }
  
  background(255);//actualizamos el fondo
  
  ellipse(400,200,200,200);//dibujamos la elipse con el color
}
