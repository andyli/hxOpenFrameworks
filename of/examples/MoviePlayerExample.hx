package of.examples;

import cpp.Lib;
import haxe.io.Bytes;
import haxe.io.BytesData;
import of.utils.Types;
import of.utils.Constants;
import of.video.VideoPlayer;
import of.graphics.Texture;

using of.helpers.FunctionInjector;

class MoviePlayerExample extends of.app.BaseApp
{
	var fingerMovie:VideoPlayer;
	var frameByframe:Bool;
	
	override public function setup():Void {
		background(255,255,255);
		
		frameByframe = false;

		fingerMovie = new VideoPlayer();
		fingerMovie.loadMovie("movies/fingers.mov");
		fingerMovie.play();
	}
	
	override public function update():Void {
		fingerMovie.idleMovie();
	}
	
	override public function draw():Void {
		setColor(0xFFFFFF);

		fingerMovie.draw(20,20);
		setColor(0x000000);
		var pixels = fingerMovie.getPixels();
		// let's move through the "RGB" char array
		// using the red pixel to control the size of a circle.
		var i = 4;
		while (i < 320) {
			var j = 4;
			while (j < 240){
				var r:Int = cast pixels[(j * 320 + i)*3];
				var val = 1 - (r / 255.0);
				circle(400 + i, 20 + j, 10 * val);
				j += 8;
			}
			i += 8;
		}


		setColor(0x000000);
		drawBitmapString("press f to change",20,320);
		if(frameByframe) setColor(0xCCCCCC);
		drawBitmapString("mouse speed position",20,340);
		if(!frameByframe) setColor(0xCCCCCC); else setColor(0x000000);
		drawBitmapString("keys <- -> frame by frame " ,190,340);
		setColor(0x000000);

		drawBitmapString("frame: " + toString(fingerMovie.getCurrentFrame()) + "/"+toString(fingerMovie.getTotalNumFrames()),20,380);
		drawBitmapString("duration: " + toString(fingerMovie.getPosition()*fingerMovie.getDuration(),2) + "/"+toString(fingerMovie.getDuration(),2),20,400);
		drawBitmapString("speed: " + toString(fingerMovie.getSpeed(),2),20,420);

		if(fingerMovie.getIsMovieDone()){
			setColor(0xFF0000);
			drawBitmapString("end of movie",20,440);
		}
	}
	override public function keyPressed(key:Int):Void {
		switch(key){
			case 'f'.charCodeAt(0):
				frameByframe=!frameByframe;
				fingerMovie.setPaused(frameByframe);
			case Constants.OF_KEY_LEFT:
				fingerMovie.previousFrame();
			case Constants.OF_KEY_RIGHT:
				fingerMovie.nextFrame();
			case '0'.charCodeAt(0):
				fingerMovie.firstFrame();
		}
	}
	
	override public function mouseMoved(x:Int, y:Int):Void {
		if(!frameByframe){
			var width = getWidth();
			var pct = x / width;
			var speed = (2 * pct - 1) * 5.0;
			fingerMovie.setSpeed(speed);
		}
	}
	
	override public function mouseDragged(x:Int, y:Int, button:Int):Void {
		if(!frameByframe){
			var width = getWidth();
			var pct = x / width;
			fingerMovie.setPosition(pct);
		}
	}
	
	override public function mousePressed(x:Int, y:Int, button:Int):Void {
		if(!frameByframe){
			fingerMovie.setPaused(true);
		}
	}
	
	override public function mouseReleased(?x:Int, ?y:Int, ?button:Int):Void {
		if(!frameByframe){
			fingerMovie.setPaused(false);
		}
	}
	
	public static function main():Void {
		setupOpenGL(new of.app.AppGlutWindow(), 1024, 768, Constants.OF_WINDOW);
		runApp(new MoviePlayerExample());
	}
}