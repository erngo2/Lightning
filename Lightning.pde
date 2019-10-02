int startY = 0;
int startX = 250;
int endY = 0;
int endX = 250;
void setup()
{
  size(500, 500);
  background(100, 100, 100);
  strokeWeight(1);
}
void draw()
{
	stroke((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	strokeWeight((int)(Math.random()*3));
	while(endY < 1000){
		endY = startY + (int)(Math.random() * 7) + 1;
		endX = startX + (int)(Math.random() * 19) - 9;
		line(startX, startY, endX, endY);
		endY = startY + (int)(Math.random() * 6) - 1;
		endX = startX + (int)(Math.random() * 19) - 9;
		line(startX, startY, endX, endY);
		
		startX = endX;
		startY = endY;
	}
}
void mousePressed()
{
	if(mouseButton == RIGHT){
		background((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	}
	startY = 0;
	startX = (int)(Math.random() * 5) + mouseX;
	endY = 0;
	endX = (int)(Math.random() * 5) + mouseX;
}

