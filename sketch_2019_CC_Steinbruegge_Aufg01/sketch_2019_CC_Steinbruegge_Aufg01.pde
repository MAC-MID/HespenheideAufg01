//2019, Creative Coding, Aufg01 – Marie Steinbrügge

float lineX;
float lineY;

int r = 50;

float angle;
float angle2;
float angle3 = 90;

int i = 0;

void setup(){
  size(700,550);
  frameRate(60); 
}

void draw (){
  //background(255,255,255);
  stroke(255,255,0,20);
  
  angle = radians(angle3);
  angle2 = radians(i);
  
  
  
  for (int x = 50; x <= 650; x += 50){
    for (int y = 50; y <= 450; y += 50){
      
      lineX = x + (r * cos(angle));
      lineY = y + (r * sin(angle));
      
      line(x,y, lineX, lineY);
    }
  }
  
  angle3 += cos(angle2);
  
  i++;
}
