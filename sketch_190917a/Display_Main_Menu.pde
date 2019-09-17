void Display_Main_Menu(){

  background(skole);
fill(#B6244F);
rectMode(CENTER);
rect(width/2,2*(height/4),150,50);  
rect(width/2,2.5*(height/4),150,50);  
rect(width/2,3*(height/4),150,50);  
  
  
  
textAlign(CENTER, CENTER);
textSize(50);



text("School Defender", width/2, height/4);
fill(#FBB7C0);
textSize(20);
text("Singleplayer", width/2, 2*(height/4));

text("Multiplayer", width/2, 2.5*(height/4));

text("Highscore", width/2, 3*(height/4));

  
}
