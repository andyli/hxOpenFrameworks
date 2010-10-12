package of.examples;

import cpp.Lib;
import of.utils.Types;
import of.utils.Constants;
import of.graphics.Image;

using of.helpers.OpenFrameworksContext;

class ImageLoaderExample extends of.app.BaseApp
{
	var bikers:Image;
	var gears:Image;
	var tdf:Image;
	var tdfSmall:Image;
	var transparency:Image;
	var bikeIcon:Image;
	
	override public function setup():Void {
		bikers = new Image();
		gears = new Image();
		tdf = new Image();
		tdfSmall = new Image();
		transparency = new Image();
		bikeIcon = new Image();
		
		bikers.loadImage("images/bikers.jpg");
		gears.loadImage("images/gears.gif");
		tdf.loadImage("images/tdf_1972_poster.jpg");
		tdfSmall.loadImage("images/tdf_1972_poster.jpg");
		tdfSmall.resize(Std.int(tdf.width / 4), Std.int(tdf.height / 4));
		tdfSmall.setImageType(Constants.OF_IMAGE_GRAYSCALE);
		transparency.loadImage("images/transparency.png");
		bikeIcon.loadImage("images/bike_icon.png");
		bikeIcon.setImageType(Constants.OF_IMAGE_GRAYSCALE);
	}
	
	override public function update():Void {
		background(255,255,255);	
	}
	
	override public function draw():Void {
		setColor(0xFFFFFF);

		bikers.draw(0,0);
		gears.draw(600,0);
		tdf.draw(600,300);
		
		setColor(0xDD3333);
		tdfSmall.draw(200,300);
		
		setColor(0xFFFFFF);
		enableAlphaBlending();
		transparency.draw(sin(getElapsedTimeMillis()/1000.0) * 100 + 500,20);
		disableAlphaBlending();
		
		
		setColor(0x000000);
		
		// getting the pixels out of an image, 
		// and then use the values to draw circles
		var pixels = bikeIcon.getPixels();
		var w = bikeIcon.width;
		var h = bikeIcon.height;
		for (i in 0...w){
			for (j in 0...h){
				var value:Int = cast pixels[j * w + i];
				var pct = 1 - (value / 255.0);
				circle(i*10,500 + j*10,1 + 5*pct);		
			}
		}
		
		setColor(0xFFFFFF);
		bikeIcon.draw(300,500, 20,20);
	}
	
	public static function main():Void {
		setupOpenGL(new of.app.AppGlutWindow(), 1024, 768, Constants.OF_WINDOW);
		runApp(new ImageLoaderExample());
	}
}
