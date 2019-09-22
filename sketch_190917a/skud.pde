class skud {

  PVector pos, vel;
  ArrayList<skud> skudList = new ArrayList<skud>();
 
  skud(PVector pos, PVector vel) {
    this.pos = pos;
    this.vel = vel;
    vel.normalize();
    vel.setMag(3);
  }
  void update(){
    pos.add(vel);
    image(Blyant, pos.x, pos.y);
  }
}
