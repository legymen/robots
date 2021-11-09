Robot robyn;
Robot robbe;

color cRobyn = color(211, 64, 64);
color cRobbe = color(64, 77, 211);
color cGround = color(72, 165, 60);
color cSky = color(135, 206, 235);
color cSun = color(252, 212, 64);

String state;
int stateTimer;

void setup() {
  size(800, 600);

  robyn = new Robot(100, cRobyn, "Robyn");
  robbe = new Robot(width - 100, cRobbe, "Robbe");

  state = "JUST_STAND";
}

void draw() {
  background(cSky);
  fill(cGround);
  rectMode(CORNER);
  rect(0, height - 10, width, 10);
  fill(cSun);
  ellipse(50, 50, 40, 40);

  switch(state) {

  case "JUST_STAND":
    robyn.render();
    robbe.render();
    break;

  case "SAY_HELLO":
    robyn.render();
    robyn.sayHello();

    robbe.render();
    robbe.sayHello();
    
    stateTimer++;
    
    if (stateTimer >= 60*2){
     state = "JUST_STAND"; 
    }
    break;
  }
  
  if (keyPressed){
   if(key == 's'){
    state = "SAY_HELLO";
    stateTimer = 0;
   }
    
  }
}
