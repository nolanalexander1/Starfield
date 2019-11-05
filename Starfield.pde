Particle [] stars;
void setup()
{
	size(500,500);
	background(0);
	stars = new Particle[1000];
	for(int i = 0; i < stars.length; i++){
		stars[i] = new Particle();
	}
	stars[0] = new OddballParticle();
}
void draw()
{	
	background(0);
	for(int i = 0; i < stars.length; i++){
		stars[i].move();
		stars[i].show();	
	}

}
void mousePressed(){
	setup();
}
class Particle
{
	double myX, myY, mySpeed, myAngle;
	int myColor; 
	Particle(){
		myX = 250;
		myY = 250;
		mySpeed = Math.random()*20;
		myAngle = Math.random()*2*Math.PI;
		myColor = color(255);
	}
	void move(){
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;
	}
	void show(){
		fill(myColor);
		noStroke();
		ellipse((float)myX, (float)myY, 5, 5);
	}
}

class OddballParticle extends Particle //inherits from Particle
{
	OddballParticle(){
		myX = 250;
		myY = 250;
		mySpeed = Math.random()*2;
		myAngle = Math.random()*2*Math.PI;
		myColor = color(255);
	}
	void show(){
		fill(255,0,0);
		noStroke();
		rect((float)myX, (float)myY, 20, 20);	
	}
}


