/**
 * Ported from graphicsExample of OpenFrameworks
 */

package of.examples;

import cpp.Lib;
import of.Graphics;
import of.Types;
import of.Utils;
import of.Constants;
import of.Image;

class GraphicsExample extends of.BaseApp
{
	var counter:Float;
	var bSmooth:Bool;
	
	override public function setup():Void {
		counter = 0;
		bSmooth = false;
		
		Graphics.setCircleResolution(50);
		Graphics.background(255, 255, 255);
		of.AppRunner.setWindowTitle("graphics example");
		
		of.AppRunner.setFrameRate(60); // if vertical sync is off, we can go a bit fast... this caps the framerate at 60fps.
	}
	
	override public function update():Void {
		counter += 0.033;
	}
	
	override public function draw():Void {
		//--------------------------- circles
		//let's draw a circle:
		Graphics.setColor(255,130,0);
		var radius = 50 + 10 * Math.sin(counter);
		Graphics.fill(); // draw "filled shapes"
		Graphics.circle(100,400,radius);

		// now just an outline
		Graphics.noFill();
		Graphics.setColor(0xCCCCCC);
		Graphics.circle(100,400,80);

		// use the bitMap type
		// note, this can be slow on some graphics cards
		// because it is using glDrawPixels which varies in
		// speed from system to system.  try using ofTrueTypeFont
		// if this bitMap type slows you down.
		Graphics.setColor(0x000000);
		Graphics.drawBitmapString("circle", 75,500);


		//--------------------------- rectangles
		Graphics.fill();
		for (i in 0...200) {
			Graphics.setColor(Std.int(of.Math.random(0, 255)), Std.int(of.Math.random(0, 255)), Std.int(of.Math.random(0, 255)));
			Graphics.rect(of.Math.random(250,350),of.Math.random(350,450),of.Math.random(10,20),of.Math.random(10,20));
		}
		Graphics.setColor(0x000000);
		Graphics.drawBitmapString("rectangles", 275,500);

		//---------------------------  transparency
		Graphics.setColor(0x00FF33);
		Graphics.rect(400,350,100,100);
		// alpha is usually turned off - for speed puposes.  let's turn it on!
		Graphics.enableAlphaBlending();
		Graphics.setColor(255, 0, 0, 127);   // red, 50% transparent
		Graphics.rect(450, 430, 100, 33);
		Graphics.setColor(255, 0, 0, Std.int(counter * 10.0) % 255);   // red, variable transparent
		Graphics.rect(450, 370, 100, 33);
		Graphics.disableAlphaBlending();

		Graphics.setColor(0x000000);
		Graphics.drawBitmapString("transparency", 410,500);

		//---------------------------  lines
		// a bunch of red lines, make them smooth if the flag is set

		if (bSmooth){
			Graphics.enableSmoothing();
		}

		Graphics.setColor(0xFF0000);
		for (i in 0...20){
			Graphics.line(600,300 + (i*5),800, 250 + (i*10));
		}

		if (bSmooth){
			Graphics.disableSmoothing();
		}

		Graphics.setColor(0x000000);
		Graphics.drawBitmapString("lines\npress 's' to toggle smoothness", 600, 500);
	}
	
	override public function keyPressed(key:Int):Void {
		if (key == 's'.charCodeAt(0)) {
			bSmooth = !bSmooth;
		}
	}
	
	static function main():Void {
		of.AppRunner.setupOpenGL(new of.AppGlutWindow(), 900, 600, of.Constants.OF_WINDOW);
		of.AppRunner.runApp(new GraphicsExample());
	}
}