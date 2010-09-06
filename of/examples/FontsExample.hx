package of.examples;

import cpp.Lib;
import of.utils.Types;
import of.utils.Constants;
import of.graphics.TrueTypeFont;

using of.helpers.FunctionInjector;

class FontsExample extends of.app.BaseApp
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
		verdana.loadFont("verdana.ttf", 8, false, true);
		verdana.setLineHeight(20.0);
		
		counter = 0;
	}
	
	override public function update():Void {
		background(255,255,255);	
		counter += 1.0;
	}
	
	override public function draw():Void {
		setColor(0x00FF00);
		franklinBook.drawString("hello, this is franklin book calling\nanyone home?", 100,100);
		
		setColor(0x000000);
		verdana.drawString("hello, I am aliased verdana -- full character set, see: � ! ", 100,210);
		
		setColor(0x00FF00);
		franklinBook.drawString("I can't make an (�) like you", 100,310);
		
		setColor(0x000000);
		verdana.drawString("yeah, but I'm not exactly pretty\nthe problem is with freeType library...\napple has a patent on TTF font hints\nso our aliased type via freeType isn't super looking", 100,380);
		
		setColor(0x00FF00);
		franklinBook.drawString("you look ok ! don't worry", 100,520);
		
		//------------------- bounding rectangle : 
		var tempString = Std.string(counter);
		// ok first job to rotate around the center, is to get the bounding box:
		var rct = franklinBook.getStringBoundingBox(tempString, 0,0);
		// this is the actual midpt (x + w/2, y + h/2);
		var centerx = rct.x + rct.width / 2;
		var centery = rct.y + rct.height / 2;

		pushMatrix();
			translate(100,650,0);
			rotate(counter, 0,0,1);
			// draw type & rect centered around 0,0 (subtract midpt from both):
			setColor(0xcccccc);
			rect(rct.x - centerx, rct.y - centery, rct.width, rct.height);
			setColor(0xff3399);
			franklinBook.drawString(tempString, -centerx,-centery);
		popMatrix();

		// -------------------------------------

		pushMatrix();
			translate(225,675,0);
			scale(5,5,1);
			setColor(0x333333);
			verdana.drawString("scale 5x!",0, 0);
		popMatrix();
		
		var size:Float = 2 + 2*sin(counter/300.0);
		pushMatrix();
			translate(520,675,0);
			scale(size,size,1);
			setColor(0x00FF00);
			franklinBook.drawString("$k@!%",0, 0);
		popMatrix();
	}
	
	public static function main():Void {
		setupOpenGL(new of.app.AppGlutWindow(), 800, 700, Constants.OF_WINDOW);
		runApp(new FontsExample());
	}
}