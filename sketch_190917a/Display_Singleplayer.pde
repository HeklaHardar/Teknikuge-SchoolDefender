float EnemyPosx = round(random(940));
float EnemyPosy = 0;
float EnemySpeed = 4;
float KebabPosx = (random(940));
float KebabPosy = 0;
float angle, angle2;
float radius = 15;
float kebabSpawn = 180;
float bogSpawn = 180;
PVector kebabVel = new PVector(0, 3);
PVector bogVel = new PVector(0, 3);
PVector Hit1 = new PVector();
PVector Hit2 = new PVector();
PVector Speed = new PVector(0, -5);
PVector dir = new PVector(0, -1);
boolean pressingUp;
boolean pressingDown;

int skudDelay = 20;
ArrayList<PVector> list = new ArrayList<PVector>();
//ArrayList<skud> skudList = new ArrayList<skud>();
ArrayList<PVector> kebabList = new ArrayList<PVector>();
ArrayList<PVector> bogList = new ArrayList<PVector>();


void Display_Singleplayer() {
  gammelstate=1;

  background(lokale);
  // TAVLE+KARAKTER
  imageMode(CENTER);
  image(Tavle, width/2, 45, 128, 90);

  textAlign(CENTER, CENTER);
  fill(#FFE3EA);
  textFont(basic);
  textSize(30);
  // Display karakter
  text(Karakter[nukarakter], width/2, 45);

  // GAME OVER
  if (nukarakter>=6) {
    state=3;
  }

  // YOU WIN
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
    dir.rotate(-angle);
  }
  if (pressingDown == true) {
    angle += 0.1;
    dir.rotate(angle);
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
    //println("skyd!" + frameCount);
    println(mouseX, mouseY);
    //skudList.add(new skud(new PVector(Playerx,Playery), new PVector(dir.x, dir.y),angle));
    list.add(new PVector(Playerx, Playery));
    skudDelay=0;
  } else {
    if (skudDelay < 100)
      skudDelay = skudDelay + 1;
  }

  // Charge Meter
  rect(10, 10, 20, skudDelay);

  //Hit2.set(0, 0);
  //tegner og flytter skud
  for (PVector skud : list) {
    skud.add(Speed);
    image(Blyant, skud.x, skud.y);
    ellipse(skud.x + Hit2.x, skud.y + Hit2.y, radius*3, radius*3);
  }

  /*EnemyPosy = EnemyPosy + EnemySpeed;
   // NÅR ENEMY RAMMER JORDEN
   if (EnemyPosy > height) {
   EnemyPosx = round(random(940));
   EnemyPosy = 60;
   nukarakter++;
   }
   image(Bog, EnemyPosx, EnemyPosy, 50, 50);
  /*for(int i = 0; i<skudList.size(); i++){
   skudList.get(i).update();
   }*/

    bogSpawn--;
  // Laver en if-statement til at Spawne bøger
  if (bogSpawn <= 0) {
    bogList.add(new PVector(random(width), 0));
    bogSpawn = 120;
  }

  // Danner et forloop til at kunne lave en række a bøger der spawner og kan skydes
  for (int i = 0; i<bogList.size(); i++) {
    bogList.get(i).add(bogVel);
    image(Bog, bogList.get(i).x, bogList.get(i).y);

    if (bogList.get(i).y >= height) {
      bogList.remove(i);
      i--;
      continue;
    }

    if (dist(bogList.get(i).x, bogList.get(i).y, Hit2.x, Hit2.y) < radius*3) {
      bogList.remove(i);
      i--;
    }
  }



  kebabSpawn--;

  // Laver en if-statement til at Spawne kebaber
  if (kebabSpawn <= 0) {
    kebabList.add(new PVector(random(width), 0));
    kebabSpawn = 120;
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
}
