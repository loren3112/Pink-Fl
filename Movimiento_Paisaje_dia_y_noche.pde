//#Processing
float t, c=255, x, n, k, e=800;
void setup() {
  size(800, 800);
}
void draw() {
  clear();
  noStroke();
  background(99+(c-=.1), 0, 0);
  fill(#FFA000);
  circle(999-c*3, 350-c, 200);
  fill(-1, 50);
  for (n=0; n<5; n++) {
    beginShape();
    vertex(0, e);
    for (x=0; x<e; x++) {
      vertex(x, 300+n*70+200*noise(t+x/300*(5-n)));
    }
    vertex(e, e);
    endShape();
  }
  t+=.01;
  fill(120-c/9, 9, 9);
  k=20*noise(c);
  for (n=0; n<3; n++)rect(0, k-30+n*390, e, 50);
  rect(0, 0, 30, e);
  rect(770, 0, 30, e);
  fill(-1, 50-c);
  for (n=0; n<9; n++) {
    ellipse(x=e*noise(n), k=(330*noise(n*9)+50), 9, 3);
    ellipse(x, k, 3, 9);
  }
}
