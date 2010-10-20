package of.examples;

import cpp.Lib;
import of.Context;
using of.Context.Functions;

class TextureScreengrabExample extends of.app.BaseApp
{
	var texScreen:Texture;
	var counter:Float;
	
	override public function setup():Void {
		counter = 0;
		setCircleResolution(100);
		texScreen = new Texture();
		texScreen.allocate(300,300,Constants.GL_RGB);
		background(230,230,240);
	}
	
	override public function update():Void {
		counter += 1;
	}
	
	override public function draw():Void {
		// 1st, draw on screen:
		setColor(0x66CC33);	
		rect(100,100,300,300);
		
		setColor(0xffffff);
		pushMatrix();
			translate(200, 200, 0);
			rotate(counter,0,0,1);
			circle(0,0,80);
			circle(100,0,10);	// a small one
		popMatrix();
		setColor(0x333333);
		drawBitmapString("(a) on screen", 150,200);

		setColor(0xFFCC33);	
		circle(mouseX, mouseY,20);
		

		// 2nd, grab a portion of the screen into a texture
		// this is quicker then grabbing into an ofImage
		// because the transfer is done in the graphics card
		// as opposed to bringing pixels back to memory
		// note: you need to allocate the texture to the right size
		texScreen.loadScreenData(100,100,300,300);
		
		

		// finally, draw that texture on screen, how ever you want
		// (note: you can even draw the texture before you call loadScreenData, 
		// in order to make some trails or feedback type effects)
		pushMatrix();
			setColor(0xffffff);
			translate(550,300,0);
			//glRotatef(counter, 0.1f, 0.03f, 0);
			var width = 200 + 100 * sin(counter/200.0);
			var height = 200 + 100 * sin(counter/200.0);
			texScreen.draw(-width/2,-height/2,width,height);
		popMatrix();

		pushMatrix();
			setColor(0xffffff);
			translate(700,210,0);
			rotate(counter, 0.1, 0.03, 0);
			texScreen.draw(-50,-50,100,100);
		popMatrix();

		setColor(0x333333);
		drawBitmapString("(b) in a texture, very meta!", 500,200);
	}
	
	public static function main():Void {
		setupOpenGL(new of.app.AppGlutWindow(), 1024, 768, Constants.OF_FULLSCREEN);
		runApp(new TextureScreengrabExample());
	}
}
