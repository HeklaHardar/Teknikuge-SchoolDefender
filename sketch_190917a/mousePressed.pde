void mousePressed(){

if(state==0){
// KNAPPER I MENU
// KNAP SINGLEPLAYER
if(mouseX>((width/2)-75) && mouseX<((width/2)+75) && mouseY>((2*(height/4))-25) && mouseY<((2*(height/4))+25)){

    state=1; 
   }
 //KNAP MULTIPLAYER
 if(mouseX>((width/2)-75) && mouseX<((width/2)+75) && mouseY>((2.5*(height/4))-25) && mouseY<((2.5*(height/4))+25)){

    state=2; 
   }
 //KNAP HIGHSCORE
  if(mouseX>((width/2)-75) && mouseX<((width/2)+75) && mouseY>((3*(height/4))-25) && mouseY<((3*(height/4))+25)){

    state=4; 
   }

}

if(state==3){
// KNAPPER I MENU
// KNAP SINGLEPLAYER
if(mouseX>((width/2)-75) && mouseX<((width/2)+75) && mouseY>((2.3*(height/4))-25) && mouseY<((2.3*(height/4))+25)){
    Reset();
    state=1; 
    
   }
 //KNAP MULTIPLAYER
 if(mouseX>((width/2)-75) && mouseX<((width/2)+75) && mouseY>((3*(height/4))-25) && mouseY<((3*(height/4))+25)){
    Reset();
    state=0; 
   }


}

}
