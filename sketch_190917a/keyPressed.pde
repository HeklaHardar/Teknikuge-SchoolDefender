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
  }
    if (key == 'a'){
    pressingA = true;
    }
    if (key == 'd'){
    pressingD = true;
   }
    if (key == 'w'){
    pressingW = true;
   }
    if (key == 's'){
    pressingS = true;
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
  }
   
    if (key == 'a'){
    pressingA = false;
    }
    if (key == 'd'){
    pressingD = false;
   }
    if (key == 'w'){
    pressingW = false;
   }
    if (key == 's'){
    pressingS = false;
   }
 }
}
