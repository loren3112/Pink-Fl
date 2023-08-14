import ddf.minim.*;
Minim minim;
AudioPlayer player;
// Pink Floyd
void setup (){
size(600, 600);
minim=new Minim(this);
  player=minim.loadFile("time.wav");
}

void draw (){
   background (0);
  stroke (255);
colorMode(HSB);
noFill();
clear();
for (float i=0; i<255; i++) {
  stroke(-1);
  line(260, 250, 343, 250+i/50);
  stroke(i, 255, 255, 127);
  line(343, 250, 650, i/2+300);
}
  filter(BLUR, 5);
stroke(-1);
triangle(300, 180, 200, 350, 400, 350);
line(0, 320, 260, 250);
 
  
  
  
  
  
  
  
  
  
if ( player.isPlaying() ){
  text ("presionar una tecla stop.",10,20);
}
else 
{
  text ("Presiona una tecla para play.",10,20);
}
}
void keyPressed () {

 if (player.isPlaying()     )
  {
    player.pause ();
  }
  else 
  {
    player. play();
  }
}
