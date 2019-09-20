void Display_Main_Menu(){

background(skole);
fill(#C1828B);
rectMode(CENTER);
rect(width/2,2*(height/4),150,50);  
rect(width/2,2.5*(height/4),150,50);  
rect(width/2,3*(height/4),150,50);  
  
  
  
textAlign(CENTER, CENTER);


fill(#0098FA);
textFont(zerovelo);
text("School Defender", width/2, height/4);
fill(#FFE3EA);
textFont(basic);
textSize(20);
text("Singleplayer", width/2, 2*(height/4));

text("Multiplayer", width/2, 2.5*(height/4));
textSize(12);
text("Hardmode", width/2, 2.95*(height/4));
text("(Coming Soon)", width/2, 3.05*(height/4));
  
}
