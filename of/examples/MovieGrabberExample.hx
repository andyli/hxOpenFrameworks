package of.examples;

import cpp.Lib;
import haxe.io.Bytes;
import haxe.io.BytesData;
import of.utils.Types;
import of.utils.Constants;
import of.video.VideoGrabber;
import of.graphics.Texture;

using of.helpers.FunctionInjector;

class MovieGrabberExample extends of.app.BaseApp
{
	var vidGrabber:VideoGrabber;
	var videoInverted:BytesData;
	var videoTexture:Texture;
	var camWidth:Int;
	var camHeight:Int;
	
	override public function setup():Void {
		camWidth 		= 320;	// try to grab at this size. 
		camHeight 		= 240;
		
		vidGrabber = new VideoGrabber();
		vidGrabber.setVerbose(true);
		vidGrabber.initGrabber(camWidth,camHeight);
		
		videoInverted 	= Bytes.alloc(camWidth * camHeight * 3).getData();
		
		videoTexture = new Texture();
		videoTexture.allocate(camWidth, camHeight, 6407); //GL_RGB
	}
	
	override public function update():Void {
		background(100,100,100);
		
		vidGrabber.grabFrame();
		
		if (vidGrabber.isFrameNew()){
			var totalPixels = camWidth*camHeight*3;
			var pixels = vidGrabber.getPixels();
			for (i in 0...totalPixels){
				videoInverted[i] = cast (255 - cast pixels[i]);
			}
			videoTexture.loadData(videoInverted, camWidth, camHeight, 6407); //GL_RGB
		}
	}
	
	override public function draw():Void {
		setColor(0xffffff);
		vidGrabber.draw(20,20);
		videoTexture.draw(20+camWidth,20,camWidth,camHeight);
	}
	
	override public function keyPressed(key:Int):Void {
		// in fullscreen mode, on a pc at least, the 
		// first time video settings the come up
		// they come up *under* the fullscreen window
		// use alt-tab to navigate to the settings
		// window. we are working on a fix for this...
		
		if (key == 's'.charCodeAt(0) || key == 'S'.charCodeAt(0)){
			vidGrabber.videoSettings();
		}
	}
	
	public static function main():Void {
		setupOpenGL(new of.app.AppGlutWindow(), 1024, 768, Constants.OF_WINDOW);
		runApp(new MovieGrabberExample());
	}
}