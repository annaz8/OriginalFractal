public void setup()
{
	size(1000,1000);
	rectMode(CENTER);
}
public void draw()
{
	background(0);
	noFill();
	stroke((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250), 40);
	origFractal(200,0,740,0);
}
public void origFractal(int x, int y, float siz, float angle)
{
	ellipse(x+siz/10, y-siz/10, siz, siz-50);
	translate(x+siz/3, y+siz/3);
	rotate(angle);
	rect(0, 0, siz/2, siz/3);
	rotate(-angle);
	translate(-x-siz/3, -y+siz/3);
	if (siz > 20)
	{
		origFractal(x, y, siz/2, angle+1);
	}
}