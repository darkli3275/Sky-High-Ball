//Displays grey menu rectangle
void menuRect(){fill(170); rect(0,0,width/3,height/6);}
  
//Displays example balls and their explanation text
void menuBalls(){
  ex1.ballDisplay(); ex2.ballDisplay(); ex3.ballDisplay();
  textSize(25); textAlign(CENTER); fill(0);
  text("Standard Ball", ex1.x, ex1.y + 85);
  text("Heavy Ball", ex2.x, ex2.y + 85);
  text("Massless Ball", ex3.x, ex3.y + 85);}
  
//Checks which example ball was clicked
void menuMouseCheck(){
  //Make the ball standard type if click was within ex1's bounds
    if(mouseX < ex1.x+ex1.d/2 && mouseX > ex1.x-ex1.d/2){
      if(mouseY < ex1.y+ex1.d/2 && mouseY > ex1.y-ex1.d/2){
        b1.standBall();}}
        
    //Make the ball heavy type if click was within ex2's bounds
    if(mouseX < ex2.x+ex2.d/2 && mouseX > ex2.x-ex2.d/2){
      if(mouseY < ex2.y+ex2.d/2 && mouseY > ex2.y-ex2.d/2){
        b1.heavyBall();}}
        
    //Make the ball massless type if click was within ex3's bounds
    if(mouseX < ex3.x+ex3.d/2 && mouseX > ex3.x-ex3.d/2){
      if(mouseY < ex3.y+ex3.d/2 && mouseY > ex3.y-ex3.d/2){
        b1.masslessBall();}}
}

void predict(Ball p, float place){
  place *= 0.25;
  float placeT = place * 60;
  float dX = mouseX - b1.x;
  float dY = mouseY - b1.y;
  float vY = ((-0.5*grav*(frameT*frameT)) + dY)/frameT;
  p.y = (vY*placeT) + (0.5 * grav * (placeT*placeT)) + b1.y;
  p.x = dX*place + b1.x;
  p.ballDisplay();
}