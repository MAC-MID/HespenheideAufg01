//2019, Creative Coding, Aufg01 – Marie Steinbrügge

float lineX;
float lineY;

int r = 30;

float angle;
float angle2;
float angle3;

int i = 0;

float a;
int time = 100;
int timer;


void setup(){
  size(700,520);
  frameRate(60); 
  
  frameRate(60); 
  
  background(0,0,0);
  stroke(255,255,0,20);
  
  timer = time;
}

int timer(){
   timer--;
   return timer;
}

void draw (){
  //background(255,255,255);
  stroke(255,255,0,20);
  
  angle = radians(angle3);
  angle2 = radians(i);
  
  for (int x = 70; x <= 630; x += 70){
    for (int y = 70; y <= 430; y += 70){
      
      lineX = x + (r * cos(angle));
      lineY = y + (r * sin(angle));
      
      line(x,y, lineX, lineY);

    }
  }
  
  angle3 += cos(angle2)+a;
  
  i++;
  
  if(timer() == 1){
     timer = time;
     a = random(0, 0.9);
   }
   
   println(a);
}
