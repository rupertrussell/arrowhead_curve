// inspired by Numberfile The Plotting of Beautiful Curves (Euler Spirals and Sierpiński Triangles) - Numberphile
// https://www.youtube.com/watch?v=kMBj2fp52tA
// 18 December 2022
// artwork on redbubble by rupertrussell

// thanks to https://happycoding.io/tutorials/processing/creating-functions/turtle-graphics
// for implenting turtle graphics in Processing

float turtleX;
float turtleY;
float turtleHeading = 0;

StringList firstOrder;
StringList secondOrder;
StringList thirdOrder;
StringList fourthOrder;
StringList fifthOrder;
StringList sixthOrder;
StringList seventhOrder;
StringList eighthOrder;
StringList ninthOrder;

float len = 4; // length of each step
float angle = 60;

void setup() {
  size(1035, 900);

  // initial position of turtle
  turtleX = len;
  turtleY = height - len ;

  firstOrder = new StringList();
  secondOrder = new StringList();
  thirdOrder = new StringList();
  fourthOrder = new StringList();
  fifthOrder = new StringList();
  sixthOrder = new StringList();
  seventhOrder = new StringList();
  eighthOrder = new StringList();
  ninthOrder = new StringList();

  firstOrder.append("X");  // starts with a single X
  println(firstOrder);
  noLoop();
  fill(0);
  textAlign(CENTER);
  strokeWeight(1);
}

void draw() {
  background(0);
  stroke(255);

  int lenOfFirstOrder = firstOrder.size();
  for (int i = 0; i < lenOfFirstOrder; i = i+1) {

    String item = firstOrder.get(i);
    if (item == "X") {
      secondOrder.append("Y");
      secondOrder.append("+");
      secondOrder.append("X");
      secondOrder.append("+");
      secondOrder.append("Y");
    }
    if (item == "+") {
      secondOrder.append("+");
    }
    if (item == "-") {
      secondOrder.append("-");
    }
    if (item == "Y") {
      secondOrder.append("X");
      secondOrder.append("-");
      secondOrder.append("Y");
      secondOrder.append("-");
      secondOrder.append("X");
    }
  }

  // Start of Third  Order
  int lenOfSecondOrder = secondOrder.size();
  for (int i = 0; i < lenOfSecondOrder; i = i+1) {
    String item = secondOrder.get(i);
    if (item == "X") {
      thirdOrder.append("Y");
      thirdOrder.append("+");
      thirdOrder.append("X");
      thirdOrder.append("+");
      thirdOrder.append("Y");
    }
    if (item == "+") {
      thirdOrder.append("+");
    }
    if (item == "-") {
      thirdOrder.append("-");
    }
    if (item == "Y") {
      thirdOrder.append("X");
      thirdOrder.append("-");
      thirdOrder.append("Y");
      thirdOrder.append("-");
      thirdOrder.append("X");
    }
  }
  // end of Third Order


  // Start of 4th  Order
  int lenOfThirdOrder = thirdOrder.size();
  for (int i = 0; i < lenOfThirdOrder; i = i+1) {
    String item = thirdOrder.get(i);
    if (item == "X") {
      fourthOrder.append("Y");
      fourthOrder.append("+");
      fourthOrder.append("X");
      fourthOrder.append("+");
      fourthOrder.append("Y");
    }
    if (item == "+") {
      fourthOrder.append("+");
    }
    if (item == "-") {
      fourthOrder.append("-");
    }
    if (item == "Y") {
      fourthOrder.append("X");
      fourthOrder.append("-");
      fourthOrder.append("Y");
      fourthOrder.append("-");
      fourthOrder.append("X");
    }
  }
  // end of 4th Order

  // Start of 5th  Order
  int lenOfForuthOrder = fourthOrder.size();
  for (int i = 0; i < lenOfForuthOrder; i = i+1) {
    String item = fourthOrder.get(i);
    if (item == "X") {
      fifthOrder.append("Y");
      fifthOrder.append("+");
      fifthOrder.append("X");
      fifthOrder.append("+");
      fifthOrder.append("Y");
    }
    if (item == "+") {
      fifthOrder.append("+");
    }
    if (item == "-") {
      fifthOrder.append("-");
    }

    if (item == "Y") {
      fifthOrder.append("X");
      fifthOrder.append("-");
      fifthOrder.append("Y");
      fifthOrder.append("-");
      fifthOrder.append("X");
    }
  }
  // end of 5th Order

  // Start of 6th  Order
  int lenOfFifthOrder = fifthOrder.size();
  for (int i = 0; i < lenOfFifthOrder; i = i+1) {
    String item = fifthOrder.get(i);
    if (item == "X") {
      sixthOrder.append("Y");
      sixthOrder.append("+");
      sixthOrder.append("X");
      sixthOrder.append("+");
      sixthOrder.append("Y");
    }
    if (item == "+") {
      sixthOrder.append("+");
    }
    if (item == "-") {
      sixthOrder.append("-");
    }
    if (item == "Y") {
      sixthOrder.append("X");
      sixthOrder.append("-");
      sixthOrder.append("Y");
      sixthOrder.append("-");
      sixthOrder.append("X");
    }
  }
  // end of 6th Order

  // Start of 7th  Order
  int lenOfSixthOrder = sixthOrder.size();
  for (int i = 0; i < lenOfSixthOrder; i = i+1) {
    String item = sixthOrder.get(i);
    if (item == "X") {
      seventhOrder.append("Y");
      seventhOrder.append("+");
      seventhOrder.append("X");
      seventhOrder.append("+");
      seventhOrder.append("Y");
    }
    if (item == "+") {
      seventhOrder.append("+");
    }
    if (item == "-") {
      seventhOrder.append("-");
    }
    if (item == "Y") {
      seventhOrder.append("X");
      seventhOrder.append("-");
      seventhOrder.append("Y");
      seventhOrder.append("-");
      seventhOrder.append("X");
    }
  }
  // end of 7th Order



  // Start of 8th  Order
  int lenOfseventhOrder = seventhOrder.size();
  for (int i = 0; i < lenOfseventhOrder; i = i+1) {
    String item = seventhOrder.get(i);
    if (item == "X") {
      eighthOrder.append("Y");
      eighthOrder.append("+");
      eighthOrder.append("X");
      eighthOrder.append("+");
      eighthOrder.append("Y");
    }
    if (item == "+") {
      eighthOrder.append("+");
    }
    if (item == "-") {
      eighthOrder.append("-");
    }
    if (item == "Y") {
      eighthOrder.append("X");
      eighthOrder.append("-");
      eighthOrder.append("Y");
      eighthOrder.append("-");
      eighthOrder.append("X");
    }
  }
  // end of 8th Order


  // Start of 9th  Order
  int lenOfeighthOrder = eighthOrder.size();
  for (int i = 0; i < lenOfeighthOrder; i = i+1) {
    String item = eighthOrder.get(i);
    if (item == "X") {
      ninthOrder.append("Y");
      ninthOrder.append("+");
      ninthOrder.append("X");
      ninthOrder.append("+");
      ninthOrder.append("Y");
    }
    if (item == "+") {
      ninthOrder.append("+");
    }
    if (item == "-") {
      ninthOrder.append("-");
    }
    if (item == "Y") {
      ninthOrder.append("X");
      ninthOrder.append("-");
      ninthOrder.append("Y");
      ninthOrder.append("-");
      ninthOrder.append("X");
    }
  }
  // end of 9th Order

  // println("firstOrder = " + firstOrder);
  // println("secondOrder = " + secondOrder);
  // println("thirdOrder = " + thirdOrder);
  // println("fourthOrder = " + fourthOrder);
  // println("fifthOrder = " + fifthOrder);
  // println("sixthOrder = " + sixthOrder);
  // println("seventhOrder = " + seventhOrder);
  // println("eighthOrder = " + eighthOrder);
  println("ninthOrder.size() = " + ninthOrder.size());

  plot(9); // which order to plot
  save("arrowhead-tn.png");
  exit();
}

void plot(int order) {
  println("order = " + order);
  if (order == 2) {
    println("Plotting 2nd Order");
    int lenOfSecondOrder = secondOrder.size();
    for (int i = 0; i < lenOfSecondOrder; i = i+1) {
      String item = secondOrder.get(i);
      if (item == "+") {
        rotateTurtle(angle);
      }
      if (item == "-") {
        rotateTurtle(-angle);
      }
      if ((item == "X") || (item == "Y")) {
        forward(len);
      }
    }
  }

  if (order == 3) {
    println("Plotting 3nd Order");
    int lenOfThirdOrder = thirdOrder.size();
    for (int i = 0; i < lenOfThirdOrder; i = i+1) {
      println("i = " + i);
      String item = thirdOrder.get(i);
      if (item == "+") {
        rotateTurtle(angle);
      }
      if (item == "-") {
        rotateTurtle(-angle);
      }
      if ((item == "X") || (item == "Y")) {
        forward(len);
      }
    }
  }

  //---
  if (order == 4) {
    println("Plotting 4th Order");
    int lenOfForthOrder = fourthOrder.size();
    for (int i = 0; i < lenOfForthOrder; i = i+1) {
      String item = fourthOrder.get(i);
      if (item == "+") {
        rotateTurtle(angle);
      }
      if (item == "-") {
        rotateTurtle(-angle);
      }
      if ((item == "X") || (item == "Y")) {
        forward(len);
      }
    }
  } // end of if 4th order


  //---  Start of 5th order
  if (order == 5) {
    println("Plotting 5th Order");
    int lenOffifthOrder = fifthOrder.size();
    for (int i = 0; i < lenOffifthOrder; i = i+1) {
      String item = fifthOrder.get(i);
      println("i = " + i + " = " + item  );
      if (item == "+") {
        rotateTurtle(angle);
      }
      if (item == "-") {
        rotateTurtle(-angle);
      }
      if ((item == "X") || (item == "Y")) {
        forward(len);
      }
    }
  } // end of if 5th order


  //---  Start of 6th order
  if (order == 6) {
    println("Plotting 6th Order");
    int lenOfSixthOrder = sixthOrder.size();
    for (int i = 0; i < lenOfSixthOrder; i = i+1) {
      String item = sixthOrder.get(i);
      if (item == "+") {
        rotateTurtle(angle);
      }
      if (item == "-") {
        rotateTurtle(-angle);
      }
      if ((item == "X") || (item == "Y")) {
        forward(len);
      }
    }
  } // end of if 6th order


  //---  Start of 7th order
  if (order == 7) {
    println("Plotting 6th Order");
    int lenOfSeventhOrder = seventhOrder.size();
    for (int i = 0; i < lenOfSeventhOrder; i = i+1) {
      String item = seventhOrder.get(i);
      if (item == "+") {
        rotateTurtle(angle);
      }
      if (item == "-") {
        rotateTurtle(-angle);
      }
      if ((item == "X") || (item == "Y")) {
        forward(len);
      }
    }
  } // end of if 7th order

  //---  Start of 8th order
  if (order == 8) {
    int lenOfEigthOrder = eighthOrder.size();
    for (int i = 0; i < lenOfEigthOrder; i = i+1) {
      String item = eighthOrder.get(i);
      //  println("i = " + i + " = " + item  );
      if (item == "+") {
        rotateTurtle(angle);
      }
      if (item == "-") {
        rotateTurtle(-angle);
      }
      if ((item == "X") || (item == "Y")) {
        forward(len);
      }
    }
  } // end of if 8th order

  //---  Start of 9th order
  if (order == 9) {
    int lenOfNinthOrder = ninthOrder.size();
    for (int i = 0; i < lenOfNinthOrder; i = i+1) {
      String item = ninthOrder.get(i);
      //  println("i = " + i + " = " + item  );
      if (item == "+") {
        rotateTurtle(angle);
      }
      if (item == "-") {
        rotateTurtle(-angle);
      }
      if ((item == "X") || (item == "Y")) {
        forward(len);
      }
    }
  } // end of if 9th order
}

void forward(float amount) {
  float newX = turtleX + cos(radians(turtleHeading)) * amount;
  float newY = turtleY + sin(radians(turtleHeading)) * amount;

  line(turtleX, turtleY, newX, newY);
  fill(0);

  turtleX = newX;
  turtleY = newY;
}

void rotateTurtle(float degrees) {
  turtleHeading += degrees;
}
