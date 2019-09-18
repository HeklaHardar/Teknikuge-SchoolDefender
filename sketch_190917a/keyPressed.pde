void keyPressed(){
  if(state==1){
    if (key == CODED) {
    if (keyCode == LEFT){
    left = true;
    }
    if (keyCode == RIGHT){
    right = true;
   }
    if (keyCode == UP){
    pressingUp = true;
   }
    if (keyCode == DOWN){
    pressingDown = true;
   }
  }
 }
   if(state==2){
    if (key == CODED) {
    if (keyCode == LEFT){
    left = true;
    }
    if (keyCode == RIGHT){
    right = true;
   }
    if (keyCode == UP){
    pressingUp = true;
   }
    if (keyCode == DOWN){
    pressingDown = true;
   }
   
    if (keyCode == 'A'){
    A = true;
    }
    if (keyCode == 'D'){
    D = true;
   }
    if (keyCode == 'W'){
    pressingW = true;
   }
    if (keyCode == 'S'){
    pressingS = true;
    }
   }
  }
 }
void keyReleased(){
if(state==1){
    if (key == CODED) {
    if (keyCode == LEFT){
    left = false;
    }
    if (keyCode == RIGHT){
    right = false;
   }
    if (keyCode == UP){
    pressingUp = false;
   }
    if (keyCode == DOWN){
    pressingDown = false;
   }
  }
 }
 if(state==2){
    if (key == CODED) {
    if (keyCode == LEFT){
    left = false;
    }
    if (keyCode == RIGHT){
    right = false;
   }
    if (keyCode == UP){
    pressingUp = false;
   }
    if (keyCode == DOWN){
    pressingDown = false;
   }
   
   
    if (keyCode == 'A'){
    A = false;
    }
    if (keyCode == 'D'){
    D = false;
   }
    if (keyCode == 'W'){
    pressingW = false;
   }
    if (keyCode == 'S'){
    pressingS = false;
   }
  }
 }
}
