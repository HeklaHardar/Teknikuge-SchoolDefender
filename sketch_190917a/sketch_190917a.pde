// BACKGROUND
PImage lokale;
PImage skole;
PImage lokale2;
PImage Klaus;
PImage Hekla;
PImage Bog;
PImage Tavle;
PImage Essay1;
PImage Essay2;

// FONTS
PFont zerovelo;
PFont basic;

// STATES
int state = 0; //The current state
final int MAIN_MENU = 0;
final int GAME = 1;
final int MULTIGAME =2;
final int GAMEOVER = 3;
final int HIGHSCORE = 4;

int Playerx;
int Player2x;
int Playery;
int Player2y;

int[] Karakter ={12,10,7,4,02,00,-3};
int nukarakter;

void setup(){
  
size(940, 529);

lokale = loadImage("Classroom.jpg");
lokale2 = loadImage("lokale2.jpg");
skole = loadImage("bygning.jpg");
Klaus = loadImage("Klaus_Pixelart.png");
Hekla = loadImage("Hekla_PixelArt.png");
Bog = loadImage("Flying book.png");
Tavle = loadImage("Tavle.png");
Essay1 = loadImage("Essay1.png");
Essay2 = loadImage("Essay2.png");

zerovelo = createFont("zerovelo.ttf", 50);
basic = createFont("Lucida Sans", 12);

Playerx=width/2;
Player2x=width/2;
Playery=height-50;
Player2y=height-50;

nukarakter=2;
}


void draw(){


switch(state){
  case MAIN_MENU:
  Display_Main_Menu();
  
  break;
  
  case GAME:
  
  Display_Singleplayer();

  break; 
  
  case MULTIGAME:
  
  Display_Multiplayer();

  break;
  
  case GAMEOVER:
  fill(#FF0000, 1);
  rect(width/2,height/2,940,529);
  
  textAlign(CENTER, CENTER);
  fill(#0098FA);
  textFont(zerovelo);
  text("GAME OVER", width/2, height/3);
  
  fill(#C1828B);
  rectMode(CENTER);
  rect(width/2,2.3*(height/4),150,50);
  rect(width/2,3*(height/4),150,50);
  
  fill(#FFE3EA);
  textFont(basic);
  textSize(20);
  text("Retry", width/2, 2.3*(height/4));
  text("Main Menu", width/2, 3*(height/4));
  
  // TINT?? 

  break; 
  
  case HIGHSCORE:

  break;
  
  
  
  } // END CASES
}
