int state = 0; //The current state
final int MAIN_MENU = 0;
final int GAME = 1;
final int GAMEOVER = 2;

void setup(){
  
size(1000, 600);

}


void draw(){
  
switch(state){
  case MAIN_MENU:
  Display_Main_Menu();
  
  break;
 
  case GAME:

  break;  
  
  case GAMEOVER:

  break; 
  
  
  
  } // END CASES
}
