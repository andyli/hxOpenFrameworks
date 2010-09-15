package of.examples;

import cpp.Lib;
import of.sound.SoundPlayer;
import of.utils.Types;
import of.utils.Constants;

using of.helpers.FunctionInjector;

class SoundPlayerFFTExample extends of.app.BaseApp
{
	var beat:SoundPlayer;
	var ow:SoundPlayer;
	var dog:SoundPlayer;
	var rooster:SoundPlayer;

	var fftSmoothed:Array<Float>;
	
	// we will draw a rectangle, bouncing off the wall:
	var px:Float;
	var py:Float;
	var vx:Float;
	var vy:Float;

	var nBandsToGet:Int;
	var prevx:Float;
	var prevy:Float;
	
	override public function setup():Void {
		// load in sounds:
		beat = new SoundPlayer();
		beat.loadSound("sounds/jdee_beat.mp3");
		ow = new SoundPlayer();
		ow.loadSound("sounds/ow.mp3");	
		dog = new SoundPlayer();
		dog.loadSound("sounds/dog.mp3");	
		rooster = new SoundPlayer();
		rooster.loadSound("sounds/rooster.mp3");
		
		// we will bounce a circle using these variables:
		px = 300;
		py = 300;
		vx = 0;
		vy = 0;	

		// the fft needs to be smoothed out, so we create an array of floats
		// for that purpose:
		fftSmoothed = [];
		for (i in 0...8192){
			fftSmoothed[i] = 0;
		}
		
		nBandsToGet = 128;
	}
	
	override public function update():Void {
		background(80,80,20);

		// update the sound playing system:
		soundUpdate();	
		
		// (1) we increase px and py by adding vx and vy
		px += vx;
		py += vy;
		
		// (2) check for collision, and trigger sounds:
		// horizontal collisions:
		if (px < 0){
			px = 0;
			vx *= -1;
			dog.play();
		} else if (px > getWidth()){
			px = getWidth();
			vx *= -1;
			ow.play();
		}
		// vertical collisions:
		if (py < 0 ){
			py = 0;
			vy *= -1;
			rooster.play();
		} else if (py > getHeight()){
			py = getHeight();
			vy *= -1;
			beat.play();
		}
		// (3) slow down velocity:
		vx 	*= 0.996;
		vy 	*= 0.996;

		// (4) we use velocity for volume of the samples:
		var vel = sqrt(vx*vx + vy*vy);
		ow.setVolume(min(vel/5.0, 1));
		beat.setVolume(min(vel/5.0, 1));
		dog.setVolume(min(vel/5.0, 1));
		rooster.setVolume(min(vel/5.0, 1));

		// (5) grab the fft, and put in into a "smoothed" array,
		//		by taking maximums, as peaks and then smoothing downward
		var val = soundGetSpectrum(nBandsToGet);		// request 128 values for fft
		for (i in 0...nBandsToGet){
			
			// let the smoothed calue sink to zero:
			fftSmoothed[i] *= 0.96;
			
			// take the max, either the smoothed or the incoming:
			if (fftSmoothed[i] < val[i]) fftSmoothed[i] = val[i];
			
		}
	}
	
	override public function draw():Void {
		enableAlphaBlending();
			setColor(255,255,255,100);
			rect(100,getHeight()-300,5*128,200);
		disableAlphaBlending();
		
		// draw the fft resutls:
		setColor(255,255,255,255);
		
		var width = (5*128) / nBandsToGet;
		for (i in 0...nBandsToGet){
			// (we use negative height here, because we want to flip them
			// because the top corner is 0,0)
			rect(100+i*width,getHeight()-100,width,-(fftSmoothed[i] * 200));
		}
		
		// finally draw the playing circle:

		enableAlphaBlending();
			setColor(255,255,255,20);
			circle(px, py,50);	
		disableAlphaBlending();
		
		setColor(0xffffff);
		circle(px, py,8);
	}
	
	override public function mouseDragged(x:Int, y:Int, button:Int):Void {
		// add into vx and vy a small amount of the change in mouse:
		vx += (x - prevx) / 20.0;
		vy += (y - prevy) / 20.0;
		// store the previous mouse position:
		prevx = x;
		prevy = y;
	}
	
	override public function mousePressed(x:Int, y:Int, button:Int):Void {
		prevx = x;
		prevy = y;
	}
	
	public static function main():Void {
		setupOpenGL(new of.app.AppGlutWindow(), 1024, 768, Constants.OF_FULLSCREEN);
		runApp(new SoundPlayerFFTExample());
	}
}
