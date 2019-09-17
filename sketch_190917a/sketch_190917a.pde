// BACKGROUND
PImage lokale;
PImage skole;

// STATES
int state = 0; //The current state
final int MAIN_MENU = 0;
final int GAME = 1;
final int MULTIGAME =2;
final int GAMEOVER = 3;
final int HIGHSCORE = 4;



void setup(){
  
size(940, 529);
lokale = loadImage("Classroom.jpg");
skole= loadImage("bygning.jpg");

}


void draw(){
  
switch(state){
  case MAIN_MENU:
  Display_Main_Menu();
  
  break;
 
  case GAME:
  
  background(lokale);

  break; 
  
  case MULTIGAME:
  
  background(0);

  break;
  
  case GAMEOVER:

  break; 
  
  case HIGHSCORE:

  break;
  
  
  
  } // END CASES
}
