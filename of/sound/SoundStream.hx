package of.sound;

import cpp.Lib;
import of.app.BaseApp;

class SoundStream 
{
	static public function soundStreamSetup(nOutputChannels:Int, nInputChannels:Int, ?OFSA:BaseApp = null, ?sampleRate:Int = 44100, ?bufferSize:Int = 256, ?nBuffers:Int = 4):Void {
		_ofSoundStreamSetup( {
				nOutputChannels:nOutputChannels, 
				nInputChannels:nInputChannels, 
				OFSA:OFSA, 
				sampleRate:sampleRate, 
				bufferSize:bufferSize, 
				nBuffers:nBuffers
			});
	}
	
	static public function soundStreamStop():Void {
		_ofSoundStreamStop();
	}
	
	static public function soundStreamStart():Void {
		_ofSoundStreamStart();
	}
	
	static public function soundStreamClose():Void {
		_ofSoundStreamClose();
	}
	
	static public function soundStreamListDevices():Void {
		_ofSoundStreamListDevices();
	}

	static var _ofSoundStreamSetup = Lib.load("hxOpenFrameworks", "_ofSoundStreamSetup", 1);
	static var _ofSoundStreamStop = Lib.load("hxOpenFrameworks", "_ofSoundStreamStop", 0);
	static var _ofSoundStreamStart = Lib.load("hxOpenFrameworks", "_ofSoundStreamStart", 0);
	static var _ofSoundStreamClose = Lib.load("hxOpenFrameworks", "_ofSoundStreamClose", 0);
	static var _ofSoundStreamListDevices = Lib.load("hxOpenFrameworks", "_ofSoundStreamListDevices", 0);
}