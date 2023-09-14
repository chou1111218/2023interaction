//互動模式
void setup(){
  size(500,500);
  background(255);//改白色
}

void draw(){
    if(mousePressed){
      line(mouseX,mouseY,pmouseX,pmouseY);
    }//畫線(滑鼠座標mouseX,mouseY到之前滑鼠座標pmouseX,pmouseY)
}

void keyPressed(){
  if(key=='1')stroke(255,0,0);//按1 紅色
  if(key=='2')stroke(0,255,0);//按2 綠色
  if(key=='3')stroke(0,0,255);//按3 藍色
  if(key=='s'||key=='S')save("output.png");//如果按下s鍵就存檔
}
