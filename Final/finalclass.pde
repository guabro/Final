//Global Variables & Classes
ArrayList<Shape> shapes = new ArrayList<Shape>();
color white=255;
//
void setup() {
  size(500, 500); //Simple only for lesson
  //
  //Note: variables are the same only conceptually
  float x = width*1/4;
  float y = height*1/4;
  float ptX = width*3/4;
  float ptY = height*1/4;
  Point p = new Point (x-width*1/16, y);
  Line l = new Line (x, y, ptX, ptY); //horizontal line
  float diameter = width*1/5;
  Circle c = new Circle (x, y, diameter);
  float yDiameter = width*1/8;
  Ellipse e = new Ellipse (x, y, diameter, yDiameter);
  float side = width*1/3;
  Square s = new Square (x, y, side);
  float sideHeight = height*1/2;
  Rectangle r = new Rectangle (x, y, side, sideHeight);
  Ball b = new Ball ( x+width*1/2, y, diameter, diameter );
  Hat h = new Hat (x+width*1/2, y, side-width*1/6, sideHeight);
  //
  //Note: objects must be ordered due to same x, y
  shapes.add(l);
  shapes.add(c);
  shapes.add(e);
  shapes.add(r);
  shapes.add(s);
  shapes.add(p);
  shapes.add(h);
  shapes.add(b);
  //
}//End setup
//
void draw() {
  background(white); //Ink default is BLACK
  for ( Shape s : shapes ) {
    s.draw();
  }
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN (Driver)
//
