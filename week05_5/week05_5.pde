ArrayList<PVector> pt;
void setup(){
  size(400,400,P3D);
  pt = new ArrayList<PVector>();
}
void darw(){
  background(#FFFFF2);
  for(PVector p: pt){
    ellipse(p.x,p.y,10,10);
  }
  beginShape();
  for(PVector p: pt){
    vertex(p.x,p.y);
  }
  endShape();
}
void mousePressed(){
  pt.add( new PVector(mouseX,mouseY));
}
