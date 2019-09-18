float EnemyPosx = round(random(940));
float EnemyPosy = 0;
float EnemySpeed = 4;

void Display_Singleplayer(){
background(lokale);
imageMode(CENTER);
image(Klaus, Playerx, Playery, 25, 73);

EnemyPosy = EnemyPosy + EnemySpeed;
if (EnemyPosy > height){
  EnemyPosx = round(random(940));
}

image(Bog, EnemyPosx, EnemyPosy, 50,50);


}
