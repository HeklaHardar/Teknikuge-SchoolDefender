void Display_Gameover() {

  fill(#FF0000, 1);
  rect(width/2, height/2, 940, 529);

  textAlign(CENTER, CENTER);
  fill(#0098FA);
  textFont(zerovelo);
  text("GAME OVER", width/2, height/3);

  fill(#C1828B);
  rectMode(CENTER);
  rect(width/2, 2.3*(height/4), 150, 50);
  rect(width/2, 3*(height/4), 150, 50);

  fill(#FFE3EA);
  textFont(basic);
  textSize(20);
  text("Retry", width/2, 2.3*(height/4));
  text("Main Menu", width/2, 3*(height/4));
}
