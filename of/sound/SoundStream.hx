package of.sound;

import cpp.Lib;
import of.app.AppRunner;
import of.app.BaseApp;
import of.events.Events;
import of.utils.Utils;
import rtAudio.RtAudio;
import rtAudio.DeviceInfo;
import rtAudio.RtAudioStreamFlags;
import rtAudio.RtAudioFormat;

class SoundStream 
{
	static public function soundStreamSetup(nOutputs:Int, nInputs:Int, OFSA:BaseApp, ?sampleRate:Int = 44100, ?bufferSize:Int = 256, ?nBuffers:Int = 4):Void {
		nInputChannels 		=  nInputs;
		nOutputChannels 	=  nOutputs;
		bufferSize = Utils.nextPow2(bufferSize);	// must be pow2

		
		audio = new RtAudio();

		var outputParameters = null;
		if(nOutputChannels > 0){
			outputParameters = {
				deviceId:audio.getDefaultOutputDevice(),
				nChannels:nOutputChannels,
				firstChannel:0,
			}
		}

		var inputParameters = null;
		if(nInputChannels > 0){
			inputParameters = {
				deviceId:audio.getDefaultInputDevice(),
				nChannels:nInputChannels,
				firstChannel:0,
			}
		}

		var bufferFrames = bufferSize; // 256 sample frames

		var options = {
			flags:[RTAUDIO_SCHEDULE_REALTIME],
			numberOfBuffers:nBuffers,
			streamName:"",
			priority:1
		}
		
		audio.openStream(	outputParameters, inputParameters, RTAUDIO_FLOAT32,
							sampleRate, bufferFrames, receiveAudioBufferAndCallSimpleApp, options);
		audio.startStream();
	}
	
	static public function soundStreamStop():Void {
		audio.stopStream();
	}
	
	static public function soundStreamStart():Void {
		audio.startStream();
	}
	
	static public function soundStreamClose():Void {
		audio.closeStream();
	}
	
	static public function soundStreamListDevices():Void {
		var audioTemp = new RtAudio();
		
		var devices = audioTemp.getDeviceCount();
		var info:DeviceInfo;
		for (i in 0...devices) {
			info = audioTemp.getDeviceInfo(i);
			Lib.println("device = " + i + " (" + info.name + ")");
			if (info.isDefaultInput) Lib.println("----* default ----* ");
			Lib.println("maximum output channels = " + info.outputChannels);
			Lib.println("maximum input channels = " + info.inputChannels);
			Lib.println("-----------------------------------------");
		}
	}

	static var audio:RtAudio;
	static var nInputChannels:Int;
	static var nOutputChannels:Int;
	static var audioEventArgs:AudioEventArgs = {
		buffer:null,
		bufferSize:0,
		nChannels:0
	};
	
	static function receiveAudioBufferAndCallSimpleApp(rtAudio:RtAudio):Int {
		var OFSAptr = AppRunner.getAppPtr();
		var bufferSize = rtAudio.bufferFrames;
		
		if ( rtAudio.status > 0 ) Lib.println("Stream over/underflow detected.");

		var fPtrOut = rtAudio.outputBuffer;
		var fPtrIn = rtAudio.inputBuffer;

		if (nInputChannels > 0 && OFSAptr != null){
			OFSAptr.audioReceived(fPtrIn, bufferSize, nInputChannels);
			
			audioEventArgs.buffer = fPtrIn;
			audioEventArgs.bufferSize = bufferSize;
			audioEventArgs.nChannels = nInputChannels;
			
			untyped OFSAptr.__dispatch(OFSAptr.events.audioReceived, audioEventArgs);			
		}


		if (nOutputChannels > 0 && OFSAptr != null) {
			OFSAptr.audioRequested(fPtrOut, bufferSize, nOutputChannels);
			
			audioEventArgs.buffer = fPtrOut;
			audioEventArgs.bufferSize = bufferSize;
			audioEventArgs.nChannels = nOutputChannels;
			
			untyped OFSAptr.__dispatch(OFSAptr.events.audioRequested, audioEventArgs);			
		}

		return 0;
	}
}