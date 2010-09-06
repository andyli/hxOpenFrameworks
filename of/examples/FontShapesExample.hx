package of.examples;

import cpp.Lib;
import of.utils.Types;
import of.utils.Constants;
import of.graphics.TrueTypeFont;

using of.helpers.FunctionInjector;

class FontShapesExample extends of.app.BaseApp
{
	var testFont:TrueTypeFont;
	var testFont2:TrueTypeFont;
	var letter:Int;
	
	override public function setup():Void {
		letter = '$'.charCodeAt(0);
		background(255,255,255);

		testFont = new TrueTypeFont();
		testFont.loadFont("Batang.ttf", 160, true, true, true);

		testFont2 = new TrueTypeFont();
		testFont2.loadFont("cooperBlack.ttf", 52, true, true, true);

		setFullscreen(false);
	}
	
	override public function draw():Void {

		setColor(0, 90, 60);
		fill();

	//	beginShape();
	//		vertex(100, 100);
	//		vertex(200, 200);
	//		vertex(100, 200);
	//	endShape(true);
	//
		drawBitmapString("fps: " + getFrameRate(), 10, 10);
		drawBitmapString("press a key to see it as a texture and as a vector. ", 10, 24);

		testFont2.drawString("Hello - I am bitmap", 15, 400);

		fill();
		testFont2.drawStringAsShapes("Hello - I am vector", 15, 480);
		noFill();
		testFont2.drawStringAsShapes("Hello - I am vector", 15, 550);

		//lets draw the key pressed as a tex and a vector both fill and no fill
		//here we show how easy it is to get

		var str = String.fromCharCode(letter);

		testFont.drawString(str, 100, 250);

		//okay lets get the character back as ofPoints
		//all curves are calculated for us so all we need to do is draw!
		var testChar:TTFCharacter = testFont.getCharacterAsPoints(letter);
		
		fill();
		pushMatrix();
			translate(250, 250, 0);
			beginShape();
				for(k in 0...testChar.contours.length){
					if( k!= 0)nextContour(true);
					for(i in 0...testChar.contours[k].pts.length){
						vertex(testChar.contours[k].pts[i].x, testChar.contours[k].pts[i].y);
					}
				}
			endShape( true );
		popMatrix();

		noFill();
		pushMatrix();
			translate(400, 250, 0);
			beginShape();
				for(k in 0...testChar.contours.length){
					if( k!= 0)nextContour(true);
					for(i in 0...testChar.contours[k].pts.length){
						vertex(testChar.contours[k].pts[i].x, testChar.contours[k].pts[i].y);
					}
				}
			endShape( true );
		popMatrix();
	}
	
	override public function keyPressed(key:Int):Void {
		letter = key;
		if( key == 'f'.charCodeAt(0)) toggleFullscreen();
	}
	
	override public function mousePressed(x:Int, y:Int, button:Int):Void {
		hideCursor();
	}
	
	public static function main():Void {
		setupOpenGL(new of.app.AppGlutWindow(), 900, 600, Constants.OF_WINDOW);
		runApp(new FontShapesExample());
	}
}