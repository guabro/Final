abstract class Shape {
  //Global Variables
  float x; //position
  float y;
  float w; //width
  float h; //height
  //
  //Constructor
  Shape(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }//End Constructor
  //
  //Methods
  abstract void draw(); //Manditory, references extended classes
  //Note: no braces, code in extended classes
  //
  //Any other procedures common to all extended classes
  //Must be declared here, like draw();
  abstract void paddleBounceLeft( float x, float y, float w, float h );
  abstract void paddleBounceRight( float x, float y, float h );
  abstract float xGetter();
  abstract float yGetter();
  abstract float wGetter();
  abstract float hGetter();
  abstract color colourDayModeGetter();
  abstract color resetNightModeGetter();
  //
}//End Shape
