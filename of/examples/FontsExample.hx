package of.examples;

import cpp.Lib;
import of.AppRunner;
import of.Graphics;
import of.Types;
import of.Constants;
import of.TrueTypeFont;

class FontsExample extends of.BaseApp
{
	var franklinBook:TrueTypeFont;
	var verdana:TrueTypeFont;
	var counter:Float;
	
	override public function setup():Void {
		// this load font loads the non-full character set
		// (ie ASCII 33-128), at size "32"
		franklinBook = new TrueTypeFont();
		franklinBook.loadFont("frabk.ttf", 32);
		
		// now load another font, but with extended parameters:
		// font name, size, anti-aliased, full character set
		verdana = new TrueTypeFont();
		verdana.loadFont("verdana.ttf", 8, false);//, true);
		verdana.setLineHeight(20.0);
		
		counter = 0;
	}
	
	override public function update():Void {
		Graphics.background(255,255,255);	
		counter += 1.0;
	}
	
	override public function draw():Void {
		Graphics.setColor(0x00FF00);
		franklinBook.drawString("hello, this is franklin book calling\nanyone home?", 100,100);
		
		Graphics.setColor(0x000000);
		verdana.drawString("hello, I am aliased verdana -- full character set, see: � ! ", 100,210);
		
		Graphics.setColor(0x00FF00);
		franklinBook.drawString("I can't make an (�) like you", 100,310);
		
		Graphics.setColor(0x000000);
		verdana.drawString("yeah, but I'm not exactly pretty\nthe problem is with freeType library...\napple has a patent on TTF font hints\nso our aliased type via freeType isn't super looking", 100,380);
		
		Graphics.setColor(0x00FF00);
		franklinBook.drawString("you look ok ! don't worry", 100,520);
		
		//------------------- bounding rectangle : 
		var tempString = Std.string(counter);
		// ok first job to rotate around the center, is to get the bounding box:
		var rect = franklinBook.getStringBoundingBox(tempString, 0,0);
		// this is the actual midpt (x + w/2, y + h/2);
		var centerx = rect.x + rect.width / 2;
		var centery = rect.y + rect.height / 2;

		Graphics.pushMatrix();
			Graphics.translate(100,650,0);
			Graphics.rotate(counter, 0,0,1);
			// draw type & rect centered around 0,0 (subtract midpt from both):
			Graphics.setColor(0xcccccc);
			Graphics.rect(rect.x - centerx, rect.y - centery, rect.width, rect.height);
			Graphics.setColor(0xff3399);
			franklinBook.drawString(tempString, -centerx,-centery);
		Graphics.popMatrix();

		// -------------------------------------

		Graphics.pushMatrix();
			Graphics.translate(225,675,0);
			Graphics.scale(5,5,1);
			Graphics.setColor(0x333333);
			verdana.drawString("scale 5x!",0, 0);
		Graphics.popMatrix();
		
		var size:Float = 2 + 2*Math.sin(counter/300.0);
		Graphics.pushMatrix();
			Graphics.translate(520,675,0);
			Graphics.scale(size,size,1);
			Graphics.setColor(0x00FF00);
			franklinBook.drawString("$k@!%",0, 0);
		Graphics.popMatrix();
	}
	
	public static function main():Void {
		AppRunner.setupOpenGL(new of.AppGlutWindow(), 800, 700, Constants.OF_WINDOW);
		AppRunner.runApp(new FontsExample());
	}
}