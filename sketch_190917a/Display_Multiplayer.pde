boolean pressingW, pressingS, pressingA, pressingD;
boolean left, right;
float EnemyPosx2 = round(random(930));
float EnemyPosy2 = 0;

void Display_Multiplayer() {
  gammelstate=2;
  background(lokale2);
  imageMode(CENTER);
  image(Tavle, width/2, 45, 128, 90);
  textAlign(CENTER, CENTER);
  fill(#FFE3EA);
  textFont(basic);
  textSize(30);
  // Display karakter
  text(Karakter[nukarakter], width/2, 45);
  if (nukarakter>=6) {
    state=3;
  }
  if (nukarakter<=0) {
    state=4;
  }



  // Gør left og right true for at de kan bruges til smooth bevægelse (For PlayerKlaus).
  if (left == true) {
    Playerx-=10;
  }
  if (right == true) {
    Playerx+=10;
  }
  // Lav edge for Playerx
  if (Playerx<40) {
    Playerx=40;
  }
  if (Playerx>900) {
    Playerx=900;
  }

  // Laver if-statements til at give PlayerKlaus roterene evner
  if (pressingUp == true) {
    angle -= 0.1;
  }
  if (pressingDown == true) {
    angle += 0.1;
  }
  if (angle > 1.55) {
    angle = 1.55;
  } else if (angle < -1.55) {
    angle = -1.55;
  }
  // END for if-statement til rotation i singleplayer

  pushMatrix();
  translate(Playerx, Playery);
  rotate(angle);
  imageMode(CENTER);
  image(Klaus, 0, 0);
  popMatrix();

  //Hitbox for cirklen ved hoved
  Hit1.set(12.5, 0);
  Hit1.rotate(-PI/2);
  Hit1.rotate(angle);
  stroke(0);
  noFill();
  ellipse(Playerx + Hit1.x, Playery + Hit1.y, radius*3, radius*3);

  //Hitbox for cirklen ved ben
  Hit1.set(12.5, 0);
  Hit1.rotate(PI/2);
  Hit1.rotate(angle);
  stroke(0);
  noFill();
  ellipse(Playerx + Hit1.x, Playery + Hit1.y, radius*3, radius*3);

  if (mousePressed && skudDelay > 20) {
    println("skyd!" + frameCount);
    list.add(new PVector(Playerx, Playery));
    skudDelay=0;
  } else {
    if (skudDelay < 100)
      skudDelay = skudDelay + 1;
  }

  // Charge Meter
  rect(10, 10, 50, skudDelay);

  Hit2.set(0, 0);
  //tegner og flytter skud
  for (PVector skud : list) {
    skud.add(Speed);
    image(Blyant, skud.x, skud.y);
    ellipse(skud.x + Hit2.x, skud.y + Hit2.y, radius*3, radius*3);
  }

  EnemyPosy = EnemyPosy + EnemySpeed;
  if (EnemyPosy > height) {
    EnemyPosx = round(random(930));
    EnemyPosy = 60;
    nukarakter++;
  }
  image(Bog, EnemyPosx, EnemyPosy, 50, 50);


  //------------------------------------------------
  //------------------------------------------------
  //------------------------------------------------

  if (pressingA == true) {
    Player2x-=10;
  }
  if (pressingD == true) {
    Player2x+=10;
  }

  // Lav edge for Playerx
  if (Player2x<40) {
    Player2x=40;
  }
  if (Player2x>900) {
    Player2x=900;
  }

  // Laver if-statements til at give PlayerKlaus roterene evner
  if (pressingW == true) {
    angle2 -= 0.1;
  }
  if (pressingS == true) {
    angle2 += 0.1;
  }
  if (angle2 > 1.55) {
    angle2 = 1.55;
  } else if (angle2 < -1.55) {
    angle2 = -1.55;
  }
  // END for if-statement til rotation i singleplayer

  pushMatrix();
  translate(Player2x, Player2y);
  rotate(angle2);
  imageMode(CENTER);
  image(Hekla, 0, 0);
  popMatrix();

  //Hitbox for cirklen ved hoved
  Hit1.set(12.5, 0);
  Hit1.rotate(-PI/2);
  Hit1.rotate(angle2);
  stroke(0);
  noFill();
  ellipse(Player2x + Hit1.x, Player2y + Hit1.y, radius*3, radius*3);

  //Hitbox for cirklen ved ben
  Hit1.set(12.5, 0);
  Hit1.rotate(PI/2);
  Hit1.rotate(angle2);
  stroke(0);
  noFill();
  ellipse(Player2x + Hit1.x, Player2y + Hit1.y, radius*3, radius*3);

  EnemyPosy2 = EnemyPosy2 + EnemySpeed;
  if (EnemyPosy2 > height) {
    EnemyPosx2 = round(random(940));
    EnemyPosy2 = 60;
    nukarakter++;
  }
  int Essay = ceil(random(2));
  if (Essay == 1) {
    image(Essay1, EnemyPosx2, EnemyPosy2, 50, 50);
  } else {
    image(Essay2, EnemyPosx2, EnemyPosy2, 50, 50);
  }
 
  
  kebabSpawn--;

// Laver en if-statement til at Spawne kebaber
  if (kebabSpawn <= 0) {
    kebabList.add(new PVector(random(width), 0));
    kebabSpawn = 10;
  }
  
  // Danner et forloop til at kunne lave en række a kebaber der spawner og giver os liv.
  for (int i = 0; i<kebabList.size(); i++) {
    kebabList.get(i).add(kebabVel);
    image(Kebab, kebabList.get(i).x, kebabList.get(i).y);

    if (kebabList.get(i).y >= height) {
      kebabList.remove(i);
      i--;
      continue;
    }

    if (dist(kebabList.get(i).x, kebabList.get(i).y, Playerx, Playery) < radius*3) {
      kebabList.remove(i);
      nukarakter--;
      i--;
    }
  }
    // Danner et forloop til at kunne lave en række a kebaber der spawner og giver os liv.
  for (int i = 0; i<kebabList.size(); i++) {
    kebabList.get(i).add(kebabVel);
    image(Kebab, kebabList.get(i).x, kebabList.get(i).y);

    if (kebabList.get(i).y >= height) {
      kebabList.remove(i);
      i--;
      continue;
    }

    if (dist(kebabList.get(i).x, kebabList.get(i).y, Player2x, Player2y) < radius*3) {
      kebabList.remove(i);
      nukarakter--;
      i--;
    }
  }
}
