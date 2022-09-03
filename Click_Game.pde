int rectX=0;
int rectY=0;
int score_val=0;

void setup(){
  size(600,800);
  background(255);
  PFont font=createFont("MS Gothic",30);
  textFont(font);
}

void draw(){
  text("Score:"+score_val,200,700);     //Scoreの文字を表示
  int[] line_x = {0,100,200,300,400,500};
  int[] line_y = {0,100,200,300,400,500};
  
  for(int i=0; i < 6;i++){
     line(line_x[i],0,line_x[i],600);  //縦線を描画
     line(0,line_y[i],600,line_y[i]);  //横線を描画
   }

   if(frameCount % 60 ==0){
     int x_random=(int)random(0,6)*100;
     int y_random=(int)random(0,6)*100;
    
     rectX=x_random;
     rectY=y_random;
     background(255);
     fill(0);  
     rect(rectX,rectY,100,100);
   }  
}

void mousePressed(){
  
   if(mouseX >= rectX && mouseX <= (rectX+100)){
     if(mouseY >= rectY && mouseY <= rectY+100){
       println("hit");
       score_val++;
     }
   }
}
