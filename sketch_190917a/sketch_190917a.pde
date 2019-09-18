// BACKGROUND
PImage lokale;
PImage skole;
PImage lokale2;
PImage Klaus;

// FONTS
PFont zerovelo;
PFont basic;

// STATES
int state = 1; //The current state
final int MAIN_MENU = 0;
final int GAME = 1;
final int MULTIGAME =2;
final int GAMEOVER = 3;
final int HIGHSCORE = 4;

int Playerx;
int Playery;



void setup(){
  
size(940, 529);

lokale = loadImage("Classroom.jpg");
lokale2 = loadImage("lokale2.jpg");
skole= loadImage("bygning.jpg");
Klaus= loadImage("Klaus_Pixelart.png");

zerovelo = createFont("zerovelo.ttf", 50);
basic = createFont("Lucida Sans", 12);

Playerx=width/2;
Playery=height-50;


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
  
  // TINT?? 

  break; 
  
  case HIGHSCORE:

  break;
  
  
  
  } // END CASES
}
