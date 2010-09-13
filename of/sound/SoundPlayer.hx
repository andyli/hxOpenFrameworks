package of.sound;

import cpp.Lib;

class SoundPlayer 
{	
	static public function soundStopAll():Void{
		_ofSoundStopAll();
	}
	
	static public function soundSetVolume(vol:Float):Void{
		_ofSoundSetVolume(vol);
	}
	
	// calls FMOD update.
	static public function soundUpdate():Void{
		_ofSoundUpdate();
	}
	
	// max 512...
	static public function soundGetSpectrum(nBands:Int):Array<Float>{
		return _ofSoundGetSpectrum(nBands);
	}

	public function new(?handle:Dynamic):Void {
		__handle = handle == null ? _ofSoundPlayer_new() : handle;
	}
	
	static public function initializeFmod():Void{
		_ofSoundPlayer_initializeFmod();
	}
	
	static public function closeFmod():Void{
		_ofSoundPlayer_closeFmod();
	}
	
	
	public function loadSound(fileName:String, ?stream:Bool = false):Void{
		_ofSoundPlayer_loadSound(__handle, fileName, stream);
	}
	
	public function unloadSound():Void{
		_ofSoundPlayer_unloadSound(__handle);
	}
	
	public function play():Void{
		_ofSoundPlayer_play(__handle);
	}
	
	public function stop():Void{
		_ofSoundPlayer_stop(__handle);
	}

	
	public function setVolume(vol:Float):Void{
		_ofSoundPlayer_setVolume(__handle, vol);
	}
	
	public function setPan(vol:Float):Void{
		_ofSoundPlayer_setPan(__handle, vol);
	}
	
	public function setSpeed(spd:Float):Void{
		_ofSoundPlayer_setSpeed(__handle, spd);
	}
	
	public function setPaused(bP:Bool):Void{
		_ofSoundPlayer_setPaused(__handle, bP);
	}
	
	public function setLoop(bLp:Bool):Void{
		_ofSoundPlayer_setLoop(__handle, bLp);
	}
	
	public function setMultiPlay(bMp:Bool):Void{
		_ofSoundPlayer_setMultiPlay(__handle, bMp);
	}
	// 0 = start, 1 = end;
	public function setPosition(pct:Float):Void{
		_ofSoundPlayer_setPosition(__handle, pct);
	}

	
	public function getPosition():Float{
		return _ofSoundPlayer_getPosition(__handle);
	}
	
	public function getIsPlaying():Bool{
		return _ofSoundPlayer_getIsPlaying(__handle);
	}
	
	public function getSpeed():Float{
		return _ofSoundPlayer_get_speed(__handle);
	}
	
	public function getPan():Float{
		return _ofSoundPlayer_get_pan(__handle);
	}



	public var isStreaming(__get_isStreaming,__set_isStreaming):Bool;
	public var bMultiPlay(__get_bMultiPlay,__set_bMultiPlay):Bool;
	public var bLoop(__get_bLoop,__set_bLoop):Bool;
	public var bLoadedOk(__get_bLoadedOk,__set_bLoadedOk):Bool;
	public var bPaused(__get_bPaused,__set_bPaused):Bool;
	public var pan(__get_pan,__set_pan):Float; // 0 - 1
	public var volume(__get_volume,__set_volume):Float; // 0 - 1
	public var internalFreq(__get_internalFreq,__set_internalFreq):Float; // 44100 ?
	public var speed(__get_speed,__set_speed):Float; // -n to n, 1 = normal, -1 backwards
	public var length(__get_length, __set_length):Int;
	
	
	public var __handle(default, null):Dynamic;
	
	function __get_isStreaming():Bool {
		return _ofSoundPlayer_get_isStreaming(__handle);
	}
	function __set_isStreaming(val:Bool):Bool {
		return _ofSoundPlayer_set_isStreaming(__handle,val);
	}

	function __get_bMultiPlay():Bool {
		return _ofSoundPlayer_get_bMultiPlay(__handle);
	}
	function __set_bMultiPlay(val:Bool):Bool {
		return _ofSoundPlayer_set_bMultiPlay(__handle,val);
	}

	function __get_bLoop():Bool {
		return _ofSoundPlayer_get_bLoop(__handle);
	}
	function __set_bLoop(val:Bool):Bool {
		return _ofSoundPlayer_set_bLoop(__handle,val);
	}

	function __get_bLoadedOk():Bool {
		return _ofSoundPlayer_get_bLoadedOk(__handle);
	}
	function __set_bLoadedOk(val:Bool):Bool {
		return _ofSoundPlayer_set_bLoadedOk(__handle,val);
	}

	function __get_bPaused():Bool {
		return _ofSoundPlayer_get_bPaused(__handle);
	}
	function __set_bPaused(val:Bool):Bool {
		return _ofSoundPlayer_set_bPaused(__handle,val);
	}

	function __get_pan():Float {
		return _ofSoundPlayer_get_pan(__handle);
	}
	function __set_pan(val:Float):Float {
		return _ofSoundPlayer_set_pan(__handle,val);
	}
	
	function __get_volume():Float {
		return _ofSoundPlayer_get_volume(__handle);
	}
	function __set_volume(val:Float):Float {
		return _ofSoundPlayer_set_volume(__handle,val);
	}
	
	function __get_internalFreq():Float {
		return _ofSoundPlayer_get_internalFreq(__handle);
	}
	function __set_internalFreq(val:Float):Float {
		return _ofSoundPlayer_set_internalFreq(__handle,val);
	}
	
	function __get_speed():Float {
		return _ofSoundPlayer_get_speed(__handle);
	}
	function __set_speed(val:Float):Float {
		return _ofSoundPlayer_set_speed(__handle,val);
	}
	
	function __get_length():Int {
		return _ofSoundPlayer_get_length(__handle);
	}
	function __set_length(val:Int):Int {
		return _ofSoundPlayer_set_length(__handle,val);
	}

	
	static var _ofSoundStopAll = Lib.load("hxOpenFrameworks", "_ofSoundStopAll", 0);
	static var _ofSoundSetVolume = Lib.load("hxOpenFrameworks", "_ofSoundSetVolume", 1);
	static var _ofSoundUpdate = Lib.load("hxOpenFrameworks", "_ofSoundUpdate", 0);
	static var _ofSoundGetSpectrum = Lib.load("hxOpenFrameworks", "_ofSoundGetSpectrum", 1);
	static var _ofSoundPlayer_new = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_new", 0);
	static var _ofSoundPlayer_initializeFmod = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_initializeFmod", 0);
	static var _ofSoundPlayer_closeFmod = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_closeFmod", 0);
	static var _ofSoundPlayer_loadSound = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_loadSound", 3);
	static var _ofSoundPlayer_unloadSound = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_unloadSound", 1);
	static var _ofSoundPlayer_play = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_play", 1);
	static var _ofSoundPlayer_stop = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_stop", 1);
	static var _ofSoundPlayer_setVolume = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_setVolume", 2);
	static var _ofSoundPlayer_setPan = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_setPan", 2);
	static var _ofSoundPlayer_setSpeed = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_setSpeed", 2);
	static var _ofSoundPlayer_setPaused = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_setPaused", 2);
	static var _ofSoundPlayer_setLoop = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_setLoop", 2);
	static var _ofSoundPlayer_setMultiPlay = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_setMultiPlay", 2);
	static var _ofSoundPlayer_setPosition = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_setPosition", 2);
	static var _ofSoundPlayer_getPosition = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_getPosition", 1);
	static var _ofSoundPlayer_getIsPlaying = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_getIsPlaying", 1);
	static var _ofSoundPlayer_get_isStreaming = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_get_isStreaming", 1);
	static var _ofSoundPlayer_set_isStreaming = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_set_isStreaming", 2);
	static var _ofSoundPlayer_get_bMultiPlay = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_get_bMultiPlay", 1);
	static var _ofSoundPlayer_set_bMultiPlay = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_set_bMultiPlay", 2);
	static var _ofSoundPlayer_get_bLoop = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_get_bLoop", 1);
	static var _ofSoundPlayer_set_bLoop = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_set_bLoop", 2);
	static var _ofSoundPlayer_get_bLoadedOk = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_get_bLoadedOk", 1);
	static var _ofSoundPlayer_set_bLoadedOk = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_set_bLoadedOk", 2);
	static var _ofSoundPlayer_get_bPaused = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_get_bPaused", 1);
	static var _ofSoundPlayer_set_bPaused = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_set_bPaused", 2);
	static var _ofSoundPlayer_get_pan = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_get_pan", 1);
	static var _ofSoundPlayer_set_pan = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_set_pan", 2);
	static var _ofSoundPlayer_get_volume = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_get_volume", 1);
	static var _ofSoundPlayer_set_volume = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_set_volume", 2);
	static var _ofSoundPlayer_get_internalFreq = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_get_internalFreq", 1);
	static var _ofSoundPlayer_set_internalFreq = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_set_internalFreq", 2);
	static var _ofSoundPlayer_get_speed = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_get_speed", 1);
	static var _ofSoundPlayer_set_speed = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_set_speed", 2);
	static var _ofSoundPlayer_get_length = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_get_length", 1);
	static var _ofSoundPlayer_set_length = Lib.load("hxOpenFrameworks", "_ofSoundPlayer_set_length", 2);
}