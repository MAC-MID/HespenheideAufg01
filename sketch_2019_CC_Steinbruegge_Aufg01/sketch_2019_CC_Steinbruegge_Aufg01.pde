//2019, Marie Steinbrügge, Aufgabe 01

int columns;
int rows; 

int scl = 100;
int w = 660;
int h = 480;

float lineX;
float lineY;

int radius = (scl/2)/2;

float angleConverted; 
float angleAnimation;
float randomAngle;

int [][] angles;

int i;
float a;

int time = 100;
int timer;

void randomAngles(){
  for (int x = 0; x < w/10; x++){
    for (int y = 0; y < h/10; y++){
      angles [x][y] = (int) random(0,360);
    }
  }
}

void setup(){
  size(700,520);
  frameRate(60); 
  
  rows = h/scl;
  columns = w/scl;
  
 // println(rows);
 // println(columns);
  
  timer = time;
  
  angles = new int [w/10][h/10];
  randomAngles();
}


int timer(){
   timer--;
   return timer;
}


void draw (){
    
  randomAngle = radians(i);
  
  for (int x = scl; x <= w; x += scl){
    for (int y = scl; y <= h; y += scl){
      
      angleAnimation = (int)(angles [x/10][y/10] + i);
      angleConverted = radians(angleAnimation);
      
      lineX = x + (radius * cos(angleConverted));
      lineY = y + (radius * sin(angleConverted));
      
      line(x,y, lineX, lineY);
      
      println(angles [x/10][y/10]);
    }
  }
  
  //angleAnimation += cos(randomAngle) + a;
  i++;
  
  if(timer() == 1){
     timer = time;
     a = random(0, 0.9);
   }
   
   //println(i);
} 
