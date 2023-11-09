PImage img;
int [][]pos={{82,457},{94,489},{110,524},{117,456},{129,490},{144,524},{154,457},{161,490},{179,524},{186,455},{198,491},{211,524},{220,455},{229,490},{247,525},{253,457},{264,489},{279,524},{287,456},{299,489},{315,525},{322,457},{333,490},{355,457},{369,490},{390,456}};

void setup(){
  size(800,600);
  img=loadImage("keyboard.png");
  rectMode(CENTER); //用中心點，來畫四邊形 
}
void draw(){
  background(#FFFFF2);//淡黃色，清背景
  image(img,0,600-266);
  fill(255,0,0,128);//半透明的紅色
  rect(mouseX,mouseY,28,30,5);
  fill(0,255,0,128);
  for(int i=0;i<26;i++){
    if(typing.charAt(0)-'a' ==i)rect(pos[i][0],pos[i][1],28,30,5);
    if(pressed[i])rect(pos[i][0],pos[i][1],28,30,5);
  }
  fill(0);
  textSize(50);
  text(typing,50,50);
  text(typing.charAt(0),50,100);
}
String typing="printf";
boolean [] pressed=new boolean[26];
void keyPressed(){
  if(key>='a'&&key<='z')pressed[key-'a']=true;
}
void keyReleased(){
  if(key>='a'&&key<='z')pressed[key-'a']=false;
}
void mousePressed(){
  println(mouseX,mouseY);
}
