boolean pressingW, pressingS, pressingA, pressingD;
boolean left, right;
float EnemyPosx2 = round(random(930));
float EnemyPosy2 = 0;

void Display_Multiplayer(){
background(lokale2);
imageMode(CENTER);
image(Tavle,width/2,45, 128,90);
// Gør left og right true for at de kan bruges til smooth bevægelse (For PlayerKlaus).
if (left == true){
    Playerx-=10;
}
if (right == true){
    Playerx+=10;
}
// Lav edge for Playerx
if (Playerx<40){
   Playerx=40;
}
if (Playerx>900){
   Playerx=900;
}

// Laver if-statements til at give PlayerKlaus roterene evner
  if (pressingUp == true){
    angle -= 0.1;
  }
  if (pressingDown == true){
    angle += 0.1;
  }
  if (angle > 1.55){
    angle = 1.55;
  } else if (angle < -1.55){
    angle = -1.55;
  }
// END for if-statement til rotation i singleplayer
  
  pushMatrix();
  translate(Playerx,Playery);
  rotate(angle);
  imageMode(CENTER);
  image(Klaus,0,0);
  popMatrix();

EnemyPosy = EnemyPosy + EnemySpeed;
if (EnemyPosy > height){
  EnemyPosx = round(random(930));
}
image(Bog, EnemyPosx, EnemyPosy, 50,50);

if (EnemyPosy > height){
   EnemyPosy = 60;
 }


//------------------------------------------------
//------------------------------------------------
//------------------------------------------------

if (pressingA == true){
    Player2x-=10;
}
if (pressingD == true){
    Player2x+=10;
}

// Lav edge for Playerx
if (Player2x<40){
   Player2x=40;
}
if (Player2x>900){
   Player2x=900;
}

// Laver if-statements til at give PlayerKlaus roterene evner
  if (pressingW == true){
    angle2 -= 0.1;
  }
  if (pressingS == true){
    angle2 += 0.1;
  }
  if (angle2 > 1.55){
    angle2 = 1.55;
  } else if (angle2 < -1.55){
    angle2 = -1.55;
  }
// END for if-statement til rotation i singleplayer
  
  pushMatrix();
  translate(Player2x,Player2y);
  rotate(angle2);
  imageMode(CENTER);
  image(Hekla,0,0);
  popMatrix();
  
EnemyPosy2 = EnemyPosy2 + EnemySpeed;
if (EnemyPosy2 > height){
  EnemyPosx2 = round(random(940));
}
int Essay = ceil(random(2));
if (Essay == 1){
image(Essay1, EnemyPosx2, EnemyPosy2, 50,50);
} else {
image(Essay2, EnemyPosx2, EnemyPosy2, 50,50);
}
if (EnemyPosy2 > height){
   EnemyPosy2 = 60;
 }
}
