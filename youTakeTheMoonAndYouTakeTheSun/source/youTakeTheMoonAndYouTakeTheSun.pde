/** ********************
    CISC 1600
    Application Template
    Your Name: Emmanuel Pascual
    
    Note: Fill in the appropriate   sections to make your program.
******************** */

// Quick comment.
/* Longer comment */
/**
    Very long comment.
*/

/** ********************
  Variables:
  Variables provide a way to save information   within your sketch and use it to control
  the size, position, shape, etc. of what   you are drawing.
******************** */
int x =0; // Cloud Postion 1 
int y =0;// Cloud Postion 1 
int x2 = 200;// Cloud Postion 2 
int y2 = 30;// Cloud Postion 2 
int x3 = 400;// Cloud Postion 3 
int y3 = 0; // Cloud Postion 3
int y4 = 30 ; // Cloud Postion 4 
int x4 = 600; // Cloud Postion 4
int x5; //X position for Sun
int y5; // y position for sun 
int x6; // x postion for moon
int y6; // y positon for sun
boolean youTakeTheSun; //Toogle true or false for Moon/Sun movement


PImage cloud; //Creates image variable 
PImage cloud2; //Creates image variable 
PImage cloud3; //Creates image variable 
PImage cloud4; //Creates image variable 
PImage sun; //Creates image variable 
PImage moon; //Creates image variable 
PImage stars;  //Creates image variable 


/** ********************
  setup():
  Use setup() to specify things that need to   be done once, when the sketch first opens.
******************** */
void setup() {
size(600,700);



//Stores images from DATA folder to variables

cloud = loadImage("Cloud.png"); 
cloud2 = loadImage("Cloud.png");
cloud3 = loadImage("Cloud.png");
cloud4 = loadImage("Cloud.png");
sun = loadImage("Sun.png");
moon = loadImage("Moon.png");
stars = loadImage("stars.png");
 
 //
 
 x5 = width/2 - 670/2; 
 y5 = height;
 x6 = width/2 - 670/2; 
 y6 = height;
 
}

/** ********************
  Use draw() to specify things that you want   to have done repeatedly.
  NOTE: draw() must be present in your program,  even if it is left empty.
******************** */

void draw() {
cloudMovement(); 

sunMovement();

moonMovement();

images(); 


  }



/** ********************
  Event Listeners:
  Use event-listeners like keyPressed() to allow 
  users of your program to cause things to happen.
******************** */
//This event handler is responsible for lifting up the sun 
void keyPressed(){

 if(key == 'n'){

  if(y5 <= 700){
  
  y5 = y5 + 2;
  
  }
 }
 
 
 //this makes the sun setand leads to a special event once the the sun is down
 if(key == 's'){
 
  if(y6 <= 700){
  
  y6 = y6 + 2; 
  
  }

}
 
 if (key == 'q'){

exit(); 
 
 }

 }//boolean toggle, if true the animation continues if false it stops 
    void mousePressed(){
  youTakeTheSun = !youTakeTheSun; 

 
 
 
 }



/** ********************
  Functions:
  Functions are sections of code that you create
  and name.
******************** */

//Checks if Toggle is on then lifts sun up.
void sunMovement(){ 

if (youTakeTheSun == true && y5 >= 0){

y5--; 

keyPressed();

} 

  

}
  //responsible for setting the night theme as well as moon movement 
  void moonMovement(){
  
  if (y5 >= 701){
if (youTakeTheSun == true && y6 >= -20){
y6--; 

background(stars);
  keyPressed(); 
  } if (y5 >=701){
  
  background(stars); 
  
  }
 
}



  
  
} 
//Resizing all images to fit nicely on screen
void images(){


image(sun, x5, y5  )  ;
sun.resize(670, 314);

image(moon, x6, y6); 
moon.resize(700,340); 


image(cloud, x, y);
cloud.resize(150,100);


image(cloud2, x2, y2);
cloud2.resize(150,100);

image(cloud3, x3, y3);
cloud3.resize(150 , 100);

image(cloud4 , x4, y4);
cloud4.resize(150,100);

}
 
 
 //Constant animation without need of User input
 
 void cloudMovement(){
background(230, 230, 250); 
if ( x3 < width){
x++;
x2++; 
x3++; 
x4++;
} else {

x3=-140; 


} if (x2 > width){

x2 =-140;

} if (x > width) {

x =-140; 
}

if (x4 > width){

x4 =-140; 

}


}

/** ********************
  Classes:
  Used to create objects.
  This section if for advanced students only. 
******************** */
