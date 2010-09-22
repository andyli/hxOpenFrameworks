package of.examples;

import cpp.Lib;
import of.sound.SoundPlayer;
import of.graphics.TrueTypeFont;
import of.utils.Types;
import of.utils.Constants;

using of.helpers.OpenFrameworksContext;

class SoundPlayerExample extends of.app.BaseApp
{
	
	var beats:SoundPlayer;
	var synth:SoundPlayer;
	var vocals:SoundPlayer;

	var font:TrueTypeFont;
	var synthPosition:Float;
		
	override public function setup():Void {
		synth = new SoundPlayer();
		synth.loadSound("sounds/synth.wav");
		beats = new SoundPlayer();
		beats.loadSound("sounds/1085.mp3");
		vocals = new SoundPlayer();
		vocals.loadSound("sounds/Violet.mp3");
		
		synth.setVolume(0.75);
		beats.setVolume(0.75);
		vocals.setVolume(0.5);
		
		font = new TrueTypeFont();
		font.loadFont("Sudbury_Basin_3D.ttf", 32);
		
		beats.setMultiPlay(false);
		vocals.setMultiPlay(true);
	}
	
	override public function update():Void {
		background(255,255,255);
		
		// update the sound playing system:
		soundUpdate();
	}
	
	override public function draw():Void {		
		// draw the background colors:
		var widthDiv = getWidth() / 3.0;
		setColor(0xeeeeee);
		rect(0,0,widthDiv,getHeight()); 
		setColor(0xffffff);
		rect(widthDiv,0,widthDiv,getHeight()); 
		setColor(0xdddddd);
		rect(widthDiv*2,0,widthDiv,getHeight()); 
		

		//---------------------------------- synth:
		if (synth.getIsPlaying()) setColor(0xFF0000);
		else setColor(0x000000);
		font.drawString("synth !!", 50,50);
		
		setColor(0x000000);
		drawBitmapString("click to play\npct done: "+synth.getPosition()+"\nspeed: "+synth.getSpeed()+"\npan: "+synth.getPan(), 50, getHeight()-50);



		//---------------------------------- beats:
		if (beats.getIsPlaying()) setColor(0xFF0000);
		else setColor(0x000000);
		font.drawString("beats !!", widthDiv+50,50);

		setColor(0x000000);
		drawBitmapString("click and drag\npct done: "+beats.getPosition()+"\nspeed: "+beats.getSpeed(), widthDiv+50,getHeight()-50);

		//---------------------------------- vocals:
		if (vocals.getIsPlaying()) setColor(0xFF0000);
		else setColor(0x000000);
		font.drawString("vocals !!", widthDiv*2+50,50);

		setColor(0x000000);
		drawBitmapString("click to play (multiplay)\npct done: "+vocals.getPosition()+"\nspeed: "+vocals.getSpeed(), widthDiv*2+50,getHeight()-50);
	}
	
	override public function mouseDragged(x:Int, y:Int, button:Int):Void {
		// continuously control the speed of the beat sample via drag, 
		// when in the "beat" region:
		var widthStep = getWidth() / 3.0;
		if (x >= widthStep && x < widthStep*2){
			beats.setSpeed( 0.5 + ((getHeight() - y) / getHeight())*1.0);
		} 
	}
	
	override public function mousePressed(x:Int, y:Int, button:Int):Void {
		var widthStep = getWidth() / 3.0;
		if (x < widthStep){
			var pct = x / widthStep;
			synth.play();
			synth.setSpeed( 0.1 + ((getHeight() - y) / getHeight())*10);
			synth.setPan(pct);
		} else if (x >= widthStep && x < widthStep*2){
			beats.play();
		} else {
			vocals.play();
			vocals.setSpeed( 0.1 + ((getHeight() - y) / getHeight())*3);
			vocals.setPan(x / getWidth());	
		}
	}
	
	public static function main():Void {
		setupOpenGL(new of.app.AppGlutWindow(), 1024, 768, Constants.OF_FULLSCREEN);
		runApp(new SoundPlayerExample());
	}
}