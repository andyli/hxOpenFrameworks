package of.video;

import cpp.Lib;
import haxe.io.BytesData;
import of.graphics.Texture;
import of.utils.Types;

class VideoPlayer 
{

	public function new(?handle:Dynamic):Void {
		__handle = handle == null ? _ofVideoPlayer_new() : handle;
	}
	
	
	public function loadMovie(name:String):Bool{
		return _ofVideoPlayer_loadMovie(__handle, name);
	}
	
	public function closeMovie():Void{
		_ofVideoPlayer_closeMovie(__handle);
	}
	
	public function close():Void{
		_ofVideoPlayer_close(__handle);
	}

	//same as idleMovie
	public function update():Void{
		_ofVideoPlayer_update(__handle);
	}
	// rename to updateMovie?
	public function idleMovie():Void{
		_ofVideoPlayer_idleMovie(__handle);
	}
	
	public function play():Void{
		_ofVideoPlayer_play(__handle);
	}
	
	public function stop():Void{
		_ofVideoPlayer_stop(__handle);
	}

	
	public function isFrameNew():Bool{
		return _ofVideoPlayer_isFrameNew(__handle);
	}
	
	public function getPixels():BytesData{
		return _ofVideoPlayer_getPixels(__handle);
	}
	
	public function getPosition():Float{
		return _ofVideoPlayer_getPosition(__handle);
	}
	
	public function getSpeed():Float{
		return _ofVideoPlayer_getSpeed(__handle);
	}
	
	public function getDuration():Float{
		return _ofVideoPlayer_getDuration(__handle);
	}
	
	public function getIsMovieDone():Bool{
		return _ofVideoPlayer_getIsMovieDone(__handle);
	}

	
	public function setPosition(pct:Float):Void{
		_ofVideoPlayer_setPosition(__handle, pct);
	}
	
	public function setVolume(volume:Int):Void{
		_ofVideoPlayer_setVolume(__handle, volume);
	}
	
	public function setLoopState(state:Int):Void{
		_ofVideoPlayer_setLoopState(__handle, state);
	}
	
	public function setSpeed(speed:Float):Void{
		_ofVideoPlayer_setSpeed(__handle, speed);
	}
	
	// frame 0 = first frame...
	public function setFrame(frame:Int):Void{
		_ofVideoPlayer_setFrame(__handle, frame);
	}

	
	public function setUseTexture(bUse:Bool):Void{
		_ofVideoPlayer_setUseTexture(__handle, bUse);
	}
	
	public function getTextureReference():Texture{
		return new Texture(_ofVideoPlayer_getTextureReference(__handle));
	}
	
	public function draw(x:Float, y:Float, ?w:Float, ?h:Float):Void{
		h == null ? _ofVideoPlayer_draw2(__handle, x, y) : _ofVideoPlayer_draw4(__handle, x, y, w, h);
	}
	
	//the anchor is the point the image is drawn around.
	//this can be useful if you want to rotate an image around a particular point.
	//set the anchor as a percentage of the image width/height ( 0.0-1.0 range )
	public function setAnchorPercent(xPct:Float, yPct:Float):Void{
		_ofVideoPlayer_setAnchorPercent(__handle, xPct, yPct);
	}
	//set the anchor point in pixels
	public function setAnchorPoint(x:Int, y:Int):Void{
		_ofVideoPlayer_setAnchorPoint(__handle, x, y);
	}
	//resets the anchor to (0, 0)
	public function resetAnchor():Void{
		_ofVideoPlayer_resetAnchor(__handle);
	}

	
	public function setPaused(bPause:Bool):Void{
		_ofVideoPlayer_setPaused(__handle, bPause);
	}

	
	public function getCurrentFrame():Int{
		return _ofVideoPlayer_getCurrentFrame(__handle);
	}
	
	public function getTotalNumFrames():Int{
		return _ofVideoPlayer_getTotalNumFrames(__handle);
	}

	
	public function firstFrame():Void{
		_ofVideoPlayer_firstFrame(__handle);
	}
	
	public function nextFrame():Void{
		_ofVideoPlayer_nextFrame(__handle);
	}
	
	public function previousFrame():Void{
		_ofVideoPlayer_previousFrame(__handle);
	}

	
	public function getHeight():Float{
		return __get_height();
	}
	
	public function getWidth():Float{
		return __get_width();
	}

	public var width(__get_width,__set_width):Int;
	public var height(__get_height,__set_height):Int;
	public var speed(__get_speed,__set_speed):Float;
	public var bLoaded(__get_bLoaded,__set_bLoaded):Bool;
	
	// number of frames
	public var nFrames(__get_nFrames,__set_nFrames):Int;
	
	// 24 bit: rgb
	public var pixels(getPixels,__set_pixels):BytesData;
	
	public var bHavePixelsChanged(__get_bHavePixelsChanged,__set_bHavePixelsChanged):Bool;
	
	// a ptr to the texture we are utilizing
	public var tex(getTextureReference,__set_tex):Texture;
	
	// are we using a texture
	public var bUseTexture(__get_bUseTexture,__set_bUseTexture):Bool;
	
	// so we know to free pixels or not
	public var allocated(__get_allocated,__set_allocated):Bool;
	
	
	
	public var __handle(default, null):Dynamic;

	function __get_width():Int {
		return _ofVideoPlayer_get_width(__handle);
	}
	function __set_width(val:Int):Int {
		return _ofVideoPlayer_set_width(__handle,val);
	}

	function __get_height():Int {
		return _ofVideoPlayer_get_height(__handle);
	}
	function __set_height(val:Int):Int {
		return _ofVideoPlayer_set_height(__handle,val);
	}

	function __get_speed():Float {
		return _ofVideoPlayer_get_speed(__handle);
	}
	function __set_speed(val:Float):Float {
		return _ofVideoPlayer_set_speed(__handle,val);
	}

	function __get_bLoaded():Bool {
		return _ofVideoPlayer_get_bLoaded(__handle);
	}
	function __set_bLoaded(val:Bool):Bool {
		return _ofVideoPlayer_set_bLoaded(__handle,val);
	}

	function __get_nFrames():Int {
		return _ofVideoPlayer_get_nFrames(__handle);
	}
	function __set_nFrames(val:Int):Int {
		return _ofVideoPlayer_set_nFrames(__handle,val);
	}

	function __set_pixels(val:BytesData):BytesData {
		return _ofVideoPlayer_set_pixels(__handle,val);
	}

	function __get_bHavePixelsChanged():Bool {
		return _ofVideoPlayer_get_bHavePixelsChanged(__handle);
	}
	function __set_bHavePixelsChanged(val:Bool):Bool {
		return _ofVideoPlayer_set_bHavePixelsChanged(__handle,val);
	}

	function __set_tex(val:Texture):Texture {
		return _ofVideoPlayer_set_tex(__handle,val);
	}

	function __get_bUseTexture():Bool {
		return _ofVideoPlayer_get_bUseTexture(__handle);
	}
	function __set_bUseTexture(val:Bool):Bool {
		return _ofVideoPlayer_set_bUseTexture(__handle,val);
	}

	function __get_allocated():Bool {
		return _ofVideoPlayer_get_allocated(__handle);
	}
	function __set_allocated(val:Bool):Bool {
		return _ofVideoPlayer_set_allocated(__handle,val);
	}	
	
	static var _ofVideoPlayer_new = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_new", 0);
	static var _ofVideoPlayer_loadMovie = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_loadMovie", 2);
	static var _ofVideoPlayer_closeMovie = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_closeMovie", 1);
	static var _ofVideoPlayer_close = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_close", 1);
	static var _ofVideoPlayer_update = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_update", 1);
	static var _ofVideoPlayer_idleMovie = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_idleMovie", 1);
	static var _ofVideoPlayer_play = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_play", 1);
	static var _ofVideoPlayer_stop = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_stop", 1);
	static var _ofVideoPlayer_isFrameNew = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_isFrameNew", 1);
	static var _ofVideoPlayer_getPixels = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_getPixels", 1);
	static var _ofVideoPlayer_getPosition = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_getPosition", 1);
	static var _ofVideoPlayer_getSpeed = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_getSpeed", 1);
	static var _ofVideoPlayer_getDuration = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_getDuration", 1);
	static var _ofVideoPlayer_getIsMovieDone = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_getIsMovieDone", 1);
	static var _ofVideoPlayer_setPosition = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_setPosition", 2);
	static var _ofVideoPlayer_setVolume = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_setVolume", 2);
	static var _ofVideoPlayer_setLoopState = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_setLoopState", 2);
	static var _ofVideoPlayer_setSpeed = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_setSpeed", 2);
	static var _ofVideoPlayer_setFrame = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_setFrame", 2);
	static var _ofVideoPlayer_setUseTexture = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_setUseTexture", 2);
	static var _ofVideoPlayer_getTextureReference = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_getTextureReference", 1);
	static var _ofVideoPlayer_draw4 = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_draw4", 5);
	static var _ofVideoPlayer_draw2 = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_draw2", 3);
	static var _ofVideoPlayer_setAnchorPercent = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_setAnchorPercent", 3);
	static var _ofVideoPlayer_setAnchorPoint = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_setAnchorPoint", 3);
	static var _ofVideoPlayer_resetAnchor = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_resetAnchor", 1);
	static var _ofVideoPlayer_setPaused = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_setPaused", 2);
	static var _ofVideoPlayer_getCurrentFrame = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_getCurrentFrame", 1);
	static var _ofVideoPlayer_getTotalNumFrames = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_getTotalNumFrames", 1);
	static var _ofVideoPlayer_firstFrame = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_firstFrame", 1);
	static var _ofVideoPlayer_nextFrame = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_nextFrame", 1);
	static var _ofVideoPlayer_previousFrame = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_previousFrame", 1);
	static var _ofVideoPlayer_get_width = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_get_width", 1);
	static var _ofVideoPlayer_set_width = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_set_width", 2);
	static var _ofVideoPlayer_get_height = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_get_height", 1);
	static var _ofVideoPlayer_set_height = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_set_height", 2);
	static var _ofVideoPlayer_get_speed = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_get_speed", 1);
	static var _ofVideoPlayer_set_speed = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_set_speed", 2);
	static var _ofVideoPlayer_get_bLoaded = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_get_bLoaded", 1);
	static var _ofVideoPlayer_set_bLoaded = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_set_bLoaded", 2);
	static var _ofVideoPlayer_get_nFrames = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_get_nFrames", 1);
	static var _ofVideoPlayer_set_nFrames = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_set_nFrames", 2);
	static var _ofVideoPlayer_set_pixels = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_set_pixels", 2);
	static var _ofVideoPlayer_get_bHavePixelsChanged = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_get_bHavePixelsChanged", 1);
	static var _ofVideoPlayer_set_bHavePixelsChanged = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_set_bHavePixelsChanged", 2);
	static var _ofVideoPlayer_set_tex = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_set_tex", 2);
	static var _ofVideoPlayer_get_bUseTexture = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_get_bUseTexture", 1);
	static var _ofVideoPlayer_set_bUseTexture = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_set_bUseTexture", 2);
	static var _ofVideoPlayer_get_allocated = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_get_allocated", 1);
	static var _ofVideoPlayer_set_allocated = Lib.load("hxOpenFrameworks", "_ofVideoPlayer_set_allocated", 2);
}