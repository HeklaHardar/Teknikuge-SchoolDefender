void keyPressed(){
  if(state==1){
    if (key == CODED) {
    if (keyCode == LEFT){
    left = true;
    }
    if (keyCode == RIGHT){
    right = true;
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
  }
 }
}
