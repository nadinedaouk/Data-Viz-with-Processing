
int particleCount = 700; //3melna declare la particlecount 
Particle[] particles = new Particle[particleCount];
PImage img;


void setup()
{
 //background(0);

 noStroke();
  size(1300, 850);


 
  //initializing particles
  for (int i = 0; i < particleCount; i++) {
    particles[i] = new Particle();
  }
}
 void draw() {



background(#050c20);
textSize(30);
text( "Jewelry Display", 100, 80 );
  textSize(20);
  //first cha2feh thing
  text("% of people interested by ",100, 650);
  text("jewelry in the window displays", 100, 680); 
  //text("window displays ", 100, 160); 
   textSize(15);
  text("86% ", 205, 320); 
  text("14% ", 347, 405); 
  
  // second cha2feh thing
  textSize(20);
  text("% of people that would purchase ",490, 650);
  text("the jewels shown in display", 490, 680); 
  //text("in window displays ", 490, 160);
  textSize(15); 
  text("81% ", 600, 320); 
  text("19% ", 746, 405); 

  // third cha2feh thing
  textSize(20);
  text("% of people that would check ",900, 650);
  text("another store that has jewlery", 900, 680); 
  text("in the window displays ", 900, 710);
  textSize(15); 
  text("62% ", 970, 320); 
  text("24% ", 1113, 405); 
  
  ////explications
  textSize(15);
  text("When jewellery stores close they remove the jewels that have been during the opening hours on window displays. The main", 100, 120);
  text("reason behind this removal is the fear of getting robbed when the jewellery is not under the employee’s surveillance.", 100, 140);
  text("This visual represent the opinion of 32 people(100% of the results) concerning the way they react towards the empty window displays.", 100, 160);
  text("The point to be made after the results is that some jewellery stores might be loosing clients because of this fear of theft while", 100, 180);
  text("removing the jewels for customers to see and admire.", 100, 200);
  
pushMatrix();
 translate(210, 350);
  
 /* Loop through the particles, and update them */
  for (int i = 0; i < particleCount; i++) {
    Particle particle = (Particle) particles[i];
    particle.display();
  }
  popMatrix();
}
 
class Particle {
  float rad;
  float angle;
  float dec;
  
  
 
  int size;
 
  //particle constructor
  Particle() {
    angle = random(-10, 10);
    rad = random(0, 200);
    dec = (150 - rad) * 0.00004;
   
 
    size = (int) random(2, 4);
  }
 
  void display () {
     // ma base
    //fill((int)random(80, 200));
    //ellipse(rad * sin(angle)*0.70, 180 * cos(angle)*0.70, 2, 2);
   //fill((int)random(150, 255)); 
    //ellipse(rad * cos(angle)*0.70, 180 * sin(angle)*0.70, 2, 2);
     
////////////////////////////////////////////  awal sphere
    fill(#ffffff);
    ellipse(rad * sin(angle)*0.602, 180 * cos(angle)*0.602+100, size, size);
   
    fill(#FFFFFF); 
    ellipse(rad * cos(angle)*0.602, 180 * sin(angle)*0.602+100, size, size);
    //////////////el outside de la premiere sphere
    fill(#bdc3c7);
    ellipse(rad * sin(angle)*0.602+5, 180 * cos(angle)*0.602+100, 1, 1);
   
    fill(#bdc3c7); 
    ellipse(rad * cos(angle)*0.602+5, 180 * sin(angle)*0.602+100, 1, 1);
    
   ////////////////////////////////////awal sphere zghireh
       fill(random(400, 800));
    ellipse(rad * sin(angle)*0.098+ 150, 180 * cos(angle)*0.098+100, 0.7, 0.7);
   
    fill(random(400, 800)); 
    ellipse(rad * cos(angle)*0.098 + 150, 180 * sin(angle)*0.098+100, 0.7, 0.7);
 
////////////////////////////////////////////  teneh sphere
    fill(#ffffff);
    ellipse(rad * sin(angle)*0.567 +400, 180 * cos(angle)*0.567+100, size, size);
   
    fill(#FFFFFF); 
    ellipse(rad * cos(angle)*0.567+ 400, 180 * sin(angle)*0.567+100, size, size);
     //////////////el outside de la deuxieme sphere kbireh
    fill(#bdc3c7);
    ellipse(rad * sin(angle)*0.567 +400+5, 180 * cos(angle)*0.567+100, 1, 1);
    fill(#bdc3c7);
    ellipse(rad * cos(angle)*0.567+ 400+5, 180 * sin(angle)*0.567+100, 1, 1);
    ////////////////////////////////////teneh sphere zghireh
       fill(random(400, 800));
    ellipse(rad * sin(angle)*0.133+ 550, 180 * cos(angle)*0.133+100, 0.7, 0.7);
   
    fill(random(400, 800)); 
    ellipse(rad * cos(angle)*0.133 + 550, 180 * sin(angle)*0.133+100, 0.7, 0.7);
    
     /////////////////////////////////////// telet sphere kbireh
    fill(#ffffff);
    ellipse(rad * sin(angle)*0.434 +780, 180 * cos(angle)*0.434+100, size, size);
   
    fill(#FFFFFF); 
    ellipse(rad * cos(angle)*0.434+ 780, 180 * sin(angle)*0.434+100, size, size);
         //////////////el outside de telet sphere kbireh
    fill(#bdc3c7);
    ellipse(rad * sin(angle)*0.434 +780+5, 180 * cos(angle)*0.434+100, 1 , 1);
    fill(#bdc3c7);
    ellipse(rad * cos(angle)*0.434+ 780+5, 180 * sin(angle)*0.434+100, 1, 1);
    
    ///////////////////////////////////////////////telteh zghireh
       fill(random(400, 800));
    ellipse(rad * sin(angle)*0.168+ 915, 180 * cos(angle)*0.168+100, 0.8, 0.8);
   
    fill(random(400, 800)); 
    ellipse(rad * cos(angle)*0.168 + 915, 180 * sin(angle)*0.168+100, 0.8, 0.8);
    

    angle += dec; //direction of particle movement

  }
}
