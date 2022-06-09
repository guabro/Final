class Circle extends Shape {
  //Global Variables
  //
  //Constructor
  Circle(float x, float y, float w, float h) {
    super(x, y, w, h);
  }//End Constructor
  //
  //Methods
  void draw() {
    ellipse(x, y, w, h);
  }//End draw
  //
}//End Circle
