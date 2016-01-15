class Arcsteroid extends Asteroid {
  
  
  
  Arcsteroid(float initialPositionX, float initialPositionY, float initialSpeedX, float initialSpeedY, float initialAsteroidDiameter, float colorOfAsteroid)
  {
    super(initialPositionX, initialPositionY, initialSpeedX, initialSpeedY, initialAsteroidDiameter, colorOfAsteroid);
  }
  
   void displayAsteroid () {
     
    colorMode(HSB, 360);
       
    noStroke();
    fill(asteroidColor, 359, 359);                                                            
    arc(positionOnAxisX, positionOnAxisY, asteroidDiameter, asteroidDiameter, 0.52, 5.76);
    fill(55);
    ellipse(positionOnAxisX-5, positionOnAxisY-10, 10, 10);
    colorMode(RGB, 255);
   }
   
  void moveAsteroid(){
    
    float chanceOfZigZag = random(0, 100);
    
    if (chanceOfZigZag <= 25) {
      
      float tempSpeed = speedInX;
      speedInX = speedInY;
      speedInY = tempSpeed;
    
    positionOnAxisX = positionOnAxisX + speedInX;
    positionOnAxisY = positionOnAxisY + speedInY;
    
    }
   
  }
}