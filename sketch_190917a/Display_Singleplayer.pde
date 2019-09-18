float EnemyPosx = round(random(940));
float EnemyPosy = 0;
float EnemySpeed = 4;

void Display_Singleplayer(){
background(lokale);
imageMode(CENTER);
image(Klaus, Playerx, Playery, 25, 73);
// Gør left og right true for at de kan bruges til smooth bevægelse (For PlayerKlaus).
if (left == true){
    Playerx-=10;
}
if (right == true){
    Playerx+=10;
}
// Lav edge for Playerx
if (Playerx<30){
   Playerx=30;
}
if (Playerx>900){
   Playerx=900;
}

EnemyPosy = EnemyPosy + EnemySpeed;
if (EnemyPosy > height){
  EnemyPosx = round(random(940));
}
image(Bog, EnemyPosx, EnemyPosy, 50,50);

if (EnemyPosy > height){
   EnemyPosy = 60;
 }
}
