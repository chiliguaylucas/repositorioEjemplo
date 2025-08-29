float x, y;       
float vx, vy;     
float r = 20;     

void setup() {
  size(600, 400);
  x = width/2;
  y = height/2;
  vx = 3;   
  vy = 2;   
}

void draw() {
  background(255);

  // mover la pelota
  x += vx;
  y += vy;

  // verificar colisión con bordes y rebotar
  if (x - r < 0 || x + r > width) {
    vx *= -1;
  }
  if (y - r < 0 || y + r > height) {
    vy *= -1;
  }

  
  fill(100, 150, 255);
  noStroke();
  ellipse(x, y, r*2, r*2);
}
