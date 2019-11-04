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

void setup(){
  size(700,520);
  frameRate(60); 
  
  rows = h/scl;
  columns = w/scl;
  
  println(rows);
  println(columns);
  
  timer = time;
}


int timer(){
   timer--;
   return timer;
}


void draw (){
  
  angleConverted = radians(angleAnimation);
  randomAngle = radians(i);
  
  for (int x = scl; x <= w; x += scl){
    for (int y = scl; y <= h; y += scl){

      lineX = x + (radius * cos(angleConverted));
      lineY = y + (radius * sin(angleConverted));
      
      line(x,y, lineX, lineY);
    }
  }
  
  angleAnimation += cos(randomAngle)+a;
  
  i++;
  
  if(timer() == 1){
     timer = time;
     a = random(0, 0.9);
   }
   
   //println(i);
} 
