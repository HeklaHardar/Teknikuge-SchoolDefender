float EnemyPosx = round(random(940));
float EnemyPosy = 0;
float EnemySpeed = 4;
float angle, angle2, rotationForce = PI/42;
float radius = 15;
PVector Hit1 = new PVector();
PVector Hit2 = new PVector();
PVector Speed = new PVector(0, -5);
PVector dir = new PVector(0,-1);
boolean pressingUp;
boolean pressingDown;

int skudDelay = 20;
ArrayList<PVector> list = new ArrayList<PVector>();
ArrayList<skud> skudList = new ArrayList<skud>();

void Display_Singleplayer() {

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
    println("skyd!" + frameCount);
    skudList.add(new skud(new PVector(Playerx,Playery), new PVector(dir.x, dir.y)));
    list.add(new PVector(Playerx, Playery));
    skudDelay=0;
  } else {
    if (skudDelay < 100)
      skudDelay = skudDelay + 1;
  }

  // Charge Meter
  rect(10, 10, 20, skudDelay);

  Hit2.set(0, 0);
  //tegner og flytter skud
  for (PVector skud : list) {
    skud.add(Speed);
    image(Blyant, skud.x, skud.y);
    ellipse(skud.x + Hit2.x, skud.y + Hit2.y, radius*3, radius*3);
  }

  EnemyPosy = EnemyPosy + EnemySpeed;
  // NÅR ENEMY RAMMER JORDEN
  if (EnemyPosy > height) {
    EnemyPosx = round(random(940));
    EnemyPosy = 60;
    nukarakter++;
  }

  for(int i = 0; i<skudList.size(); i++){
   skudList.get(i).update();
  }



  image(Bog, EnemyPosx, EnemyPosy, 50, 50);
}
