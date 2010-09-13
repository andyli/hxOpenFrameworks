package of.examples;

import cpp.Lib;
import of.utils.Types;
import of.utils.Constants;

using of.helpers.FunctionInjector;

class AudioOutputExample extends of.app.BaseApp
{
	var pan:Float;
	var sampleRate:Int;
	var bNoise:Bool;
	var volume:Float;

	var lAudio:Array<Float>;
	var rAudio:Array<Float>;

	//------------------- for the simple sine wave synthesis
	var targetFrequency:Float;
	var phase:Float;
	var phaseAdder:Float;
	var phaseAdderTarget:Float;
		
	override public function setup():Void {		
		background(255,255,255);

		// 2 output channels,
		// 0 input channels
		// 22050 samples per second
		// 256 samples per buffer
		// 4 num buffers (latency)

		sampleRate 			= 44100;
		phase 				= 0;
		phaseAdder 			= 0.0;
		phaseAdderTarget 	= 0.0;
		volume				= 0.1;
		bNoise 				= false;
		lAudio = new Array<Float>();
		rAudio = new Array<Float>();
		
		soundStreamSetup(2, 0, this, sampleRate,256, 4);

		setFrameRate(60);
	}
	
	override public function draw():Void {
		// draw the left:
		setColor(0x333333);
		rect(100,100,256,200);
		setColor(0xFFFFFF);
		for (i in 0...256){
			line(100+i,200,100+i,200+lAudio[i]*100.0);
		}

		// draw the right:
		setColor(0x333333);
		rect(600,100,256,200);
		setColor(0xFFFFFF);
		for (i in 0...256){
			line(600+i,200,600+i,200+rAudio[i]*100.0);
		}

		setColor(0x333333);
		var reportString = "volume: (" + volume + ") modify with -/+ keys\npan: (" + pan + ")\nsynthesis: " + (bNoise ? "noise" : "sine wave");
		if (!bNoise) reportString += " (" + targetFrequency + "hz)";

		drawBitmapString(reportString,80,380);
	}
	
	override public function keyPressed(key:Int):Void {
		if (key == '-'.charCodeAt(0)){
			volume -= 0.05;
			volume = max(volume, 0);
		} else if (key == '+'.charCodeAt(0)){
			volume += 0.05;
			volume = min(volume, 1);
		}
	}
	
	override public function mouseMoved(x:Int, y:Int):Void {
		var width = getWidth();
		pan = x / width;
		var height = getHeight();
		var heightPct = ((height-y) / height);
		targetFrequency = 2000.0 * heightPct;
		phaseAdderTarget = (targetFrequency / sampleRate) * Constants.TWO_PI;
	}
	
	override public function mouseDragged(x:Int, y:Int, button:Int):Void {
		var width = getWidth();
		pan = x / width;
	}
	
	override public function mousePressed(x:Int, y:Int, button:Int):Void {
		bNoise = true;
	}
	
	override public function mouseReleased(?x:Int, ?y:Int, ?button:Int):Void {
		bNoise = false;
	}
	override public function audioRequested(output:Array<Float>, bufferSize:Int, nChannels:Int):Void {
		return;
		//pan = 0.5;
		var leftScale = 1 - pan;
		var rightScale = pan;

		// sin (n) seems to have trouble when n is very large, so we
		// keep phase in the range of 0-TWO_PI like this:
		while (phase > Constants.TWO_PI){
			phase -= Constants.TWO_PI;
		}

		if ( bNoise == true){
			// ---------------------- noise --------------
			for (i in 0...bufferSize){
				lAudio[i] = output[i*nChannels    ] = randomf() * volume * leftScale;
				rAudio[i] = output[i*nChannels + 1] = randomf() * volume * rightScale;
			}
		} else {
			phaseAdder = 0.95 * phaseAdder + 0.05 * phaseAdderTarget;
			for (i in 0...bufferSize){
				phase += phaseAdder;
				var sample = sin(phase);
				lAudio[i] = output[i*nChannels    ] = sample * volume * leftScale;
				rAudio[i] = output[i*nChannels + 1] = sample * volume * rightScale;
			}
		}
	}
	
	public static function main():Void {
		setupOpenGL(new of.app.AppGlutWindow(), 1024, 768, Constants.OF_WINDOW);
		runApp(new AudioOutputExample());
	}
}