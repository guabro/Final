/*Note: require an object that talks to different objects
 Ball Class, change to appWidth and appHeight
 To Do: fix the color() fill() bug between Circle{} and Rectangle{}
 */
//
//Global Variables & Other Items (Classes)
ArrayList<Shape> shapes = new ArrayList<Shape>();
Boolean instructionsOn=false;
//
//Annonymous Class, one time object
//Is this Global or will local work?
Shape instructions = new Shape (0, 0, 300, 300) { //These hardcoded variables are minimum display, here
  //Global Variables
  color colourDayMode, resetNightMode;
  //No Constructor Needed
  void draw() {
    fill(#FFFFFF); //White, not night mode compatible due to BLUE
    rect(x, y, w, h); //background for instructions menu
    //Text Code Here, reminder about contract of inks
    fill(#FFFFFF); //Reset White, from colours of ink
  }
  //Methods for Possible Text Drawing
  //
  //Common Metods
  void paddleBounceLeft( float x, float y, float w, float h ) {
  }
  void paddleBounceRight( float x, float y, float h ) {
  }
  float xGetter() {
    return x;
  }
  float yGetter() {
    return y;
  }
  float wGetter() {
    return w;
  }
  float hGetter() {
    return h;
  }
  color colourDayModeGetter() {
    return colourDayMode;
  }
  color resetNightModeGetter() {
    return resetNightMode;
  }
}
; //Necessary Code (recall ";" end lines of code)
//
void setup()
{
  size(900, 680); //fullScreen(); //displayWidth, displayHeight
  display(); //Landscape manditory
  //
  //Local Variables & Object Setup
  //
  //Instructions, Features, and Hints for Easter Eggs
  shapes.add(instructions); //Elememt 0
  //
  //Paddles and Ball
  int yDiameter;
  int xDiameter = yDiameter = appWidth*1/90;
  int rectWidth = appWidth*1/80;
  int rectHeight = appHeight*1/2;
  int colourDayRectLeft = color(int( random(50, 200) ), int( random(50, 200) ), int( random(50, 200) ));
  int colourNightRectLeft = color(int( random(50, 200) ), int( random(50, 200) ), int( random(0) ));
  int colourDayRectRight = color(int( random(50, 200) ), int( random(50, 200) ), int( random(50, 200) ));
  int colourNightRectRight = color(int( random(50, 200) ), int( random(50, 200) ), int( random(0) ));
  int colourDayBall = color(int( random(50, 200) ), int( random(50, 200) ), int( random(50, 200) ));
  int colourNightBall = color(int( random(50, 200) ), int( random(50, 200) ), int( random(0) ));
  Rectangle rHexLeft = new Rectangle(appWidth*1/40, appHeight*1/4, rectWidth, rectHeight, colourDayRectLeft, colourNightRectLeft);
  Rectangle rHexRight = new Rectangle(appWidth*38/40, appHeight*1/4, rectWidth, rectHeight, colourDayRectRight, colourNightRectRight);
  Circle cHex = new Circle(appWidth*1/2, appHeight*1/2, xDiameter, yDiameter, colourDayBall, colourNightBall);
  //
  //Shapes Global Variable, Shapes will not change
  shapes.add(rHexLeft); //Element 1, Left Paddle
  shapes.add(rHexRight); //Element 2, Right Paddle
  shapes.add(cHex); //Element 3, Pong BALL
  //
  //Reminder: all local objects are deleted, "Garbage Heap Collected"
}//End setup
//
void draw() {
  background(0);
  //
  int instructionElement = 0;
  int paddleLeftElement = 1;
  int paddleRightElement = 2;
  int ballElement = 3;
  //
  if ( instructionsOn==true ) shapes.get(instructionElement).draw(); //Annonymous Class
  //
  //Arithmetic
  if ( instructionsOn==false ) {
    shapes.get(ballElement).paddleBounceLeft( shapes.get(paddleLeftElement).xGetter(), shapes.get(paddleLeftElement).yGetter(), shapes.get(paddleLeftElement).wGetter(), shapes.get(paddleLeftElement).hGetter() );
    shapes.get(ballElement).paddleBounceRight( shapes.get(paddleRightElement).xGetter(), shapes.get(paddleRightElement).yGetter(), shapes.get(paddleRightElement).hGetter() );
    //Drawing where tokens should be
    /* for ( Shape s : shapes ) {
     s.draw();
     }
     */
    //Note: repeats basic FOR-Each like belowss
    for ( int i=1; i<shapes.size(); i++ ) {
      shapes.get(i).draw();
      println("here", i);
    }
  } //End instructionsOn==false
  //
}//End draw
//
void keyPressed()
{
  int paddleLeftElement = 1;
  int paddleRightElement = 2;
  //Instructions: Instructions, Features, and Hints for Easter Eggs

  if ( key == CODED && key == 'I' || key == 'i' ) {
    if ( instructionsOn==true ) {
      instructionsOn=false;
    } else {
      instructionsOn=true;
    }
  }//End instructions
  //Note: .remove & .add combined in .set
  //
  //Left Paddle
  //Note: shapes.get(paddleLeftElement).movePaddleUp()
  if ( key == CODED && key == 'W' || key == 'w' ) {
    //shapes.get(paddleLeftElement)
    Rectangle paddleLeft = new Rectangle (shapes.get(paddleLeftElement).xGetter(), shapes.get(paddleLeftElement).yGetter(), shapes.get(paddleLeftElement).wGetter(), shapes.get(paddleLeftElement).hGetter(), shapes.get(paddleLeftElement).colourDayModeGetter(), shapes.get(paddleLeftElement).resetNightModeGetter());
    paddleLeft.movePaddleUP(); //Changes the y-variable, compared to shapes.get(paddleLeftElement)
    shapes.set(paddleLeftElement, paddleLeft);
  }//End W Key
  if ( key == CODED && key == 'S' || key == 's' ) {
    Rectangle paddleLeft = new Rectangle (shapes.get(paddleLeftElement).xGetter(), shapes.get(paddleLeftElement).yGetter(), shapes.get(paddleLeftElement).wGetter(), shapes.get(paddleLeftElement).hGetter(), shapes.get(paddleLeftElement).colourDayModeGetter(), shapes.get(paddleLeftElement).resetNightModeGetter());
    paddleLeft.movePaddleDOWN(); //Changes the y-variable, compared to shapes.get(paddleLeftElement)
    shapes.set(paddleLeftElement, paddleLeft);
  }//End S Key
  if ( key == CODED && key == 'D' || key == 'd' ) {
    Rectangle paddleLeft = new Rectangle (shapes.get(paddleLeftElement).xGetter(), shapes.get(paddleLeftElement).yGetter(), shapes.get(paddleLeftElement).wGetter(), shapes.get(paddleLeftElement).hGetter(), shapes.get(paddleLeftElement).colourDayModeGetter(), shapes.get(paddleLeftElement).resetNightModeGetter());
    paddleLeft.movePaddleSTOP(); //Changes the y-variable, compared to shapes.get(paddleLeftElement)
    shapes.set(paddleLeftElement, paddleLeft);
  }//End D Key
  //
  //Right Paddle
  if ( key == CODED && keyCode == UP ) {
    Rectangle paddleRight = new Rectangle (shapes.get(paddleRightElement).xGetter(), shapes.get(paddleRightElement).yGetter(), shapes.get(paddleRightElement).wGetter(), shapes.get(paddleRightElement).hGetter(), shapes.get(paddleRightElement).colourDayModeGetter(), shapes.get(paddleRightElement).resetNightModeGetter());
    paddleRight.movePaddleUP(); //Changes the y-variable, compared to shapes.get(paddleRightElement)
    shapes.set(paddleRightElement, paddleRight);
  }//End UP Key
  if ( key == CODED && keyCode == DOWN ) {
    Rectangle paddleRight = new Rectangle (shapes.get(paddleRightElement).xGetter(), shapes.get(paddleRightElement).yGetter(), shapes.get(paddleRightElement).wGetter(), shapes.get(paddleRightElement).hGetter(), shapes.get(paddleRightElement).colourDayModeGetter(), shapes.get(paddleRightElement).resetNightModeGetter());
    paddleRight.movePaddleDOWN(); //Changes the y-variable, compared to shapes.get(paddleRightElement)
    shapes.set(paddleRightElement, paddleRight);
  }//End DOWN Key
  if ( key == CODED && keyCode == LEFT ) {
    Rectangle paddleRight = new Rectangle (shapes.get(paddleRightElement).xGetter(), shapes.get(paddleRightElement).yGetter(), shapes.get(paddleRightElement).wGetter(), shapes.get(paddleRightElement).hGetter(), shapes.get(paddleRightElement).colourDayModeGetter(), shapes.get(paddleRightElement).resetNightModeGetter());
    paddleRight.movePaddleSTOP(); //Changes the y-variable, compared to shapes.get(paddleRightElement)
    shapes.set(paddleRightElement, paddleRight);
  }//End LEFT Key
  //
}//End keyPressed
//
void mousePressed() {
  //Note, trigger: this trigger will work anytime, actual trigger should be after celebration is complete
  //Be creative on your Pong BALL Triggers (i.e. add score +1 = number of new BALLs in play)
  int ballElement = 3;
  shapes.remove(ballElement); //Ball Element
  //
  //Copy and Pasting local variables is not best practice
  //Use for this lesson on leveraging local variables in garbage collection
  int yDiameter;
  int xDiameter = yDiameter = appWidth*1/90;
  int colourDayBall = color(int( random(50, 200) ), int( random(50, 200) ), int( random(50, 200) ));
  int colourNightBall = color(int( random(50, 200) ), int( random(50, 200) ), int( random(0) ));
  Circle cHex = new Circle(appWidth*1/2, appHeight*1/2, xDiameter, yDiameter, colourDayBall, colourNightBall);
  //
  shapes.add(ballElement, cHex); //Replace BALL Element Hardcoded into void draw()
  //
}//End mousePressed
//
//End MAIN (Driver) Program
