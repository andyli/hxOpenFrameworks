package of.video;

import cpp.Lib;
import haxe.io.BytesData;
import of.graphics.Texture;
import of.utils.Types;

class VideoGrabber 
{

	public function new(?handle:Dynamic):Void {
		__handle = handle == null ? _ofVideoGrabber_new() : handle;
	}
	
	
	public function listDevices():Void{
		_ofVideoGrabber_listDevices(__handle);
	}
	
	public function isFrameNew():Bool{
		return _ofVideoGrabber_isFrameNew(__handle);
	}
	
	public function grabFrame():Void{
		_ofVideoGrabber_grabFrame(__handle);
	}
	
	public function close():Void{
		_ofVideoGrabber_close(__handle);
	}
	
	public function initGrabber(w:Int, h:Int, ?bTexture:Bool = true):Bool{
		return _ofVideoGrabber_initGrabber(__handle, w, h, bTexture);
	}
	
	public function videoSettings():Void{
		_ofVideoGrabber_videoSettings(__handle);
	}
	
	public function getPixels():BytesData{
		return _ofVideoGrabber_getPixels(__handle);
	}
	
	public function getTextureReference():Texture{
		return _ofVideoGrabber_getTextureReference(__handle);
	}
	
	public function setVerbose(bTalkToMe:Bool):Void{
		_ofVideoGrabber_setVerbose(__handle, bTalkToMe);
	}
	
	public function setDeviceID(_deviceID:Int):Void{
		_ofVideoGrabber_setDeviceID(__handle, _deviceID);
	}
	
	public function setDesiredFrameRate(framerate:Int):Void{
		_ofVideoGrabber_setDesiredFrameRate(__handle, framerate);
	}
	
	public function setUseTexture(bUse:Bool):Void{
		_ofVideoGrabber_setUseTexture(__handle, bUse);
	}
	
	public function draw(x:Float, y:Float, ?w:Float, ?h:Float):Void{
		h == null ? _ofVideoGrabber_draw2(__handle, x, y) : _ofVideoGrabber_draw4(__handle, x, y, w, h);
	}
	
	public function update():Void{
		_ofVideoGrabber_update(__handle);
	}


	//the anchor is the point the image is drawn around.
	//this can be useful if you want to rotate an image around a particular point.
	
	//set the anchor as a percentage of the image width/height ( 0.0-1.0 range )
	public function setAnchorPercent(xPct:Float, yPct:Float):Void{
		_ofVideoGrabber_setAnchorPercent(__handle, xPct, yPct);
	}
	//set the anchor point in pixels
	public function setAnchorPoint(x:Int, y:Int):Void{
		_ofVideoGrabber_setAnchorPoint(__handle, x, y);
	}
	//resets the anchor to (0, 0)
	public function resetAnchor():Void{
		_ofVideoGrabber_resetAnchor(__handle);
	}

	
	public function getHeight():Float{
		return __get_height();
	}
	
	public function getWidth():Float{
		return __get_width();
	}

	public var height(__get_height,__set_height):Int;
	public var width(__get_width, __set_width):Int;
	
	function __get_height():Int {
		return _ofVideoGrabber_get_height(__handle);
	}
	function __set_height(val:Int):Int {
		return _ofVideoGrabber_set_height(__handle,val);
	}

	function __get_width():Int {
		return _ofVideoGrabber_get_width(__handle);
	}
	function __set_width(val:Int):Int {
		return _ofVideoGrabber_set_width(__handle,val);
	}

	
	public var __handle(default, null):Dynamic;
	
	static var _ofVideoGrabber_new = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_new", 0);
	static var _ofVideoGrabber_listDevices = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_listDevices", 1);
	static var _ofVideoGrabber_isFrameNew = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_isFrameNew", 1);
	static var _ofVideoGrabber_grabFrame = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_grabFrame", 1);
	static var _ofVideoGrabber_close = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_close", 1);
	static var _ofVideoGrabber_initGrabber = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_initGrabber", 4);
	static var _ofVideoGrabber_videoSettings = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_videoSettings", 1);
	static var _ofVideoGrabber_getPixels = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_getPixels", 1);
	static var _ofVideoGrabber_getTextureReference = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_getTextureReference", 1);
	static var _ofVideoGrabber_setVerbose = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_setVerbose", 2);
	static var _ofVideoGrabber_setDeviceID = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_setDeviceID", 2);
	static var _ofVideoGrabber_setDesiredFrameRate = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_setDesiredFrameRate", 2);
	static var _ofVideoGrabber_setUseTexture = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_setUseTexture", 2);
	static var _ofVideoGrabber_draw4 = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_draw4", 5);
	static var _ofVideoGrabber_draw2 = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_draw2", 3);
	static var _ofVideoGrabber_update = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_update", 1);
	static var _ofVideoGrabber_setAnchorPercent = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_setAnchorPercent", 3);
	static var _ofVideoGrabber_setAnchorPoint = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_setAnchorPoint", 3);
	static var _ofVideoGrabber_resetAnchor = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_resetAnchor", 1);
	static var _ofVideoGrabber_get_height = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_get_height", 1);
	static var _ofVideoGrabber_set_height = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_set_height", 2);
	static var _ofVideoGrabber_get_width = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_get_width", 1);
	static var _ofVideoGrabber_set_width = Lib.load("hxOpenFrameworks", "_ofVideoGrabber_set_width", 2);

}