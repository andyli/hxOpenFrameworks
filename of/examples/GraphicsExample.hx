package of.examples;

import cpp.Lib;
import of.utils.Types;
import of.utils.Constants;

using of.helpers.FunctionInjector;

class GraphicsExample extends of.app.BaseApp
{
	var counter:Float;
	var bSmooth:Bool;
	
	override public function setup():Void {
		counter = 0;
		bSmooth = false;
		
		setCircleResolution(50);
		background(255, 255, 255);
		setWindowTitle("graphics example");
		
		setFrameRate(60); // if vertical sync is off, we can go a bit fast... this caps the framerate at 60fps.
	}
	
	override public function update():Void {
		counter += 0.033;
	}
	
	override public function draw():Void {
		//--------------------------- circles
		//let's draw a circle:
		setColor(255,130,0);
		var radius = 50 + 10 * Math.sin(counter);
		fill(); // draw "filled shapes"
		circle(100,400,radius);

		// now just an outline
		noFill();
		setColor(0xCCCCCC);
		circle(100,400,80);

		// use the bitMap type
		// note, this can be slow on some graphics cards
		// because it is using glDrawPixels which varies in
		// speed from system to system.  try using ofTrueTypeFont
		// if this bitMap type slows you down.
		setColor(0x000000);
		drawBitmapString("circle", 75,500);


		//--------------------------- rectangles
		fill();
		for (i in 0...200) {
			setColor(Std.int(random(0, 255)), Std.int(random(0, 255)), Std.int(random(0, 255)));
			rect(random(250,350),random(350,450),random(10,20),random(10,20));
		}
		setColor(0x000000);
		drawBitmapString("rectangles", 275,500);

		//---------------------------  transparency
		setColor(0x00FF33);
		rect(400,350,100,100);
		// alpha is usually turned off - for speed puposes.  let's turn it on!
		enableAlphaBlending();
		setColor(255, 0, 0, 127);   // red, 50% transparent
		rect(450, 430, 100, 33);
		setColor(255, 0, 0, Std.int(counter * 10.0) % 255);   // red, variable transparent
		rect(450, 370, 100, 33);
		disableAlphaBlending();

		setColor(0x000000);
		drawBitmapString("transparency", 410,500);

		//---------------------------  lines
		// a bunch of red lines, make them smooth if the flag is set

		if (bSmooth){
			enableSmoothing();
		}

		setColor(0xFF0000);
		for (i in 0...20){
			line(600,300 + (i*5),800, 250 + (i*10));
		}

		if (bSmooth){
			disableSmoothing();
		}

		setColor(0x000000);
		drawBitmapString("lines\npress 's' to toggle smoothness", 600, 500);
	}
	
	override public function keyPressed(key:Int):Void {
		if (key == 's'.charCodeAt(0)) {
			bSmooth = !bSmooth;
		}
	}
	
	public static function main():Void {
		setupOpenGL(new of.app.AppGlutWindow(), 900, 600, Constants.OF_WINDOW);
		runApp(new GraphicsExample());
	}
}