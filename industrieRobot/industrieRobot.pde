int sizeRobot = 50;
int xposRobot = 0;
int yposRobot = 0;

int sizeObject = 50;
int xposObject = 100;
int yposObject = 150;

boolean robotDraagObject ;

void setup() {
  size(500, 500);
}

void draw() {
  tekenWereld();
  tekenRobot(xposRobot, yposRobot, sizeRobot);
  tekenObject(xposObject, yposObject, sizeObject);
}

void keyPressed() {
  if (keyCode == DOWN) {
    yposRobot = constrain(yposRobot + sizeRobot, 0, height - sizeRobot);
  } else if (keyCode == LEFT) {
    xposRobot = constrain(xposRobot - sizeRobot, 0, width + sizeRobot);
  } else if (keyCode == RIGHT) {
    xposRobot = constrain(xposRobot + sizeRobot, 0, width - sizeRobot);
  } else if (keyCode == UP) {
    yposRobot = constrain(yposRobot - sizeRobot, 0, height + sizeRobot);
  } else if (keyCode == ENTER) {
    if (xposRobot == xposObject && yposRobot == yposObject) {
      println("til op of leg neer");
      if (robotDraagObject) {
        robotDraagObject = false;
        if (keyCode == DOWN) {
          yposObject = yposObject + sizeObject;
        } else if (keyCode == LEFT) {
          xposObject = xposObject - sizeObject;
        } else if (keyCode == RIGHT) {
          xposObject = xposObject + sizeObject;
        } else if (keyCode == UP) {
          yposObject = yposObject - sizeObject;
        }
        println(robotDraagObject);
      } else {
        robotDraagObject = true;
        if (keyCode == DOWN) {
          yposObject = yposObject + sizeObject;
        } else if (keyCode == LEFT) {
          xposObject = xposObject - sizeObject;
        } else if (keyCode == RIGHT) {
          xposObject = xposObject + sizeObject;
        } else if (keyCode == UP) {
          yposObject = yposObject - sizeObject;
        }
        println(robotDraagObject);
      }
    }
  }
}
