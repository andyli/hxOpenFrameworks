package of.examples;

import cpp.Lib;
import of.AppRunner;
import of.Graphics;
import of.Types;
import of.Constants;
import of.TrueTypeFont;

class FontShapesExample extends of.BaseApp
{
	var testFont:TrueTypeFont;
	var testFont2:TrueTypeFont;
	var letter:Int;
	
	override public function setup():Void {
		letter = '$'.charCodeAt(0);
		Graphics.background(255,255,255);

		testFont = new TrueTypeFont();
		testFont.loadFont("Batang.ttf", 160, true, true, true);

		testFont2 = new TrueTypeFont();
		testFont2.loadFont("cooperBlack.ttf", 52, true, true, true);

		AppRunner.setFullscreen(false);
	}
	
	override public function draw():Void {

		Graphics.setColor(0, 90, 60);
		Graphics.fill();

	//	Graphics.beginShape();
	//		Graphics.vertex(100, 100);
	//		Graphics.vertex(200, 200);
	//		Graphics.vertex(100, 200);
	//	Graphics.endShape(true);
	//
		Graphics.drawBitmapString("fps: " + AppRunner.getFrameRate(), 10, 10);
		Graphics.drawBitmapString("press a key to see it as a texture and as a vector. ", 10, 24);

		testFont2.drawString("Hello - I am bitmap", 15, 400);

		Graphics.fill();
		testFont2.drawStringAsShapes("Hello - I am vector", 15, 480);
		Graphics.noFill();
		testFont2.drawStringAsShapes("Hello - I am vector", 15, 550);

		//lets draw the key pressed as a tex and a vector both fill and no fill
		//here we show how easy it is to get

		var str = String.fromCharCode(letter);

		testFont.drawString(str, 100, 250);

		//okay lets get the character back as ofPoints
		//all curves are calculated for us so all we need to do is draw!
		var testChar:TTFCharacter = testFont.getCharacterAsPoints(letter);
		
		Graphics.fill();
		Graphics.pushMatrix();
			Graphics.translate(250, 250, 0);
			Graphics.beginShape();
				for(k in 0...testChar.contours.length){
					if( k!= 0)Graphics.nextContour(true);
					for(i in 0...testChar.contours[k].pts.length){
						Graphics.vertex(testChar.contours[k].pts[i].x, testChar.contours[k].pts[i].y);
					}
				}
			Graphics.endShape( true );
		Graphics.popMatrix();

		Graphics.noFill();
		Graphics.pushMatrix();
			Graphics.translate(400, 250, 0);
			Graphics.beginShape();
				for(k in 0...testChar.contours.length){
					if( k!= 0)Graphics.nextContour(true);
					for(i in 0...testChar.contours[k].pts.length){
						Graphics.vertex(testChar.contours[k].pts[i].x, testChar.contours[k].pts[i].y);
					}
				}
			Graphics.endShape( true );
		Graphics.popMatrix();
	}
	
	override public function keyPressed(key:Int):Void {
		letter = key;
		if( key == 'f'.charCodeAt(0)) AppRunner.toggleFullscreen();
	}
	
	override public function mousePressed(x:Int, y:Int, button:Int):Void {
		AppRunner.hideCursor();
	}
	
	public static function main():Void {
		AppRunner.setupOpenGL(new of.AppGlutWindow(), 900, 600, Constants.OF_WINDOW);
		AppRunner.runApp(new FontShapesExample());
	}
}