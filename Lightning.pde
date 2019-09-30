int startY = 0;
int startX = 500;
int endY = 0;
int endX = 500;
void setup()
{
  size(1000, 1000);
  background(255, 255, 255);
  strokeWeight(1);
}
void draw()
{
	stroke((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	while(endY < 1000){
		endY = startY + (int)(Math.random() * 7) + 1;
		endX = startX + (int)(Math.random() * 19) - 9;
		line(startX, startY, endX, endY);
		endY = startY + (int)(Math.random() * 5) - 1;
		endX = startX + (int)(Math.random() * 19) - 9;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	startY = 0;
	startX = (int)(Math.random() * 5) + mouseX;
	endY = 0;
	endX = (int)(Math.random() * 5) + mouseX;
	
}
void mousePressed()
{
	background(255, 255, 255);
}

