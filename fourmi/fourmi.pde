
int tailleFourmi = 5;

int direction=1;

int x, y;

int cpt=0;

color BLACK = color(0, 0, 0);
color WHITE = color(255, 255, 255);

void setup() {

  size(700, 700);
  background(255);

  x=width/2;
  y=height/2;
  

}


void draw() {
  
  cpt++;
  
  noFill();
  rect(x,y,tailleFourmi,tailleFourmi);
  
  if(caseIsBlack()){
   direction--; 
   fill(255);
   stroke(255);
   rect(x,y,tailleFourmi,tailleFourmi);
  }else{
   direction++; 
   fill(0);
   stroke(0);
   rect(x,y,tailleFourmi,tailleFourmi);
  }
  
  if(direction>4){direction=1;}
  if(direction<1){direction=4;}
  
  if(direction==1){x=x+tailleFourmi;}
  if(direction==2){y=y+tailleFourmi;}
  if(direction==3){x=x-tailleFourmi;}
  if(direction==4){y=y-tailleFourmi;}
  
  fill(255);
  noStroke();
  rect(0,0,160,30);
  fill(0);
  stroke(0);
  text("Nombre d'iteration : "+cpt,10,10);
  
}

boolean caseIsBlack(){
 if(get(x+1,y+1)==BLACK){
   return true;
 }else{
  return false; 
 }
}
