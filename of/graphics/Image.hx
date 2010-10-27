package of.graphics;

import cpp.Lib;
import haxe.io.Bytes;
import haxe.io.BytesData;
import of.graphics.Texture;

class Image 
{

	public function new(?handle:Dynamic):Void {
		__handle = handle == null ? _ofImage_new() : handle;
		_ofImage_setHandle(__handle, this);
	}
	
	// alloation / deallocation routines
	
	public function allocate(w:Int, h:Int, type:Int):Void{
		_ofImage_allocate(__handle, w, h, type);
	}
	
	public function clear():Void{
		_ofImage_clear(__handle);
	}

	// copying:
	public function clone(mom:Image):Void{
		_ofImage_clone(__handle, mom);
	}

	// enable or disable using the texture of this image
	public function setUseTexture(bUse:Bool):Void{
		_ofImage_setUseTexture(__handle, bUse);
	}

	//for getting a reference to the texture TODO
	public function getTextureReference():Texture{
		return new Texture(_ofImage_getTextureReference());
	}

	// file loading / saving
	public function loadImage(fileName:String):Bool{
		return _ofImage_loadImage(__handle, fileName);
	}
	public function saveImage(fileName:String):Void{
		_ofImage_saveImage(__handle, fileName);
	}

	// getting the data
	// up to you to get this right
	public function getPixels():BytesData{
		return _pixels;
	}

	// alter the image
	public function setFromPixels(pixels:BytesData, w:Int, h:Int, newType:Int, ?bOrderIsRGB:Bool = true):Void{
		_ofImage_setFromPixels(__handle, {pixels:pixels, w:w, h:h, newType:newType, bOrderIsRGB:bOrderIsRGB});
	}
	
	public function setImageType(type:Int):Void{
		_ofImage_setImageType(__handle, type);
	}
	
	public function resize(newWidth:Int, newHeight:Int):Void{
		_ofImage_resize(__handle, newWidth, newHeight);
	}
	
	// grab pixels from opengl, using glreadpixels
	public function grabScreen(x:Int, y:Int, w:Int, h:Int):Void{
		_ofImage_grabScreen(__handle, x, y, w, h);
	}

	// if you've altered the pixels (from getPixels()) call update() to see a change:
	public function update():Void{
		_ofImage_update(__handle);
	}


	//the anchor is the point the image is drawn around.
	//this can be useful if you want to rotate an image around a particular point.
	//set the anchor as a percentage of the image width/height ( 0.0-1.0 range )
	public function setAnchorPercent(xPct:Float, yPct:Float):Void{
		_ofImage_setAnchorPercent(__handle, xPct, yPct);
	}
	//set the anchor point in pixels
	public function setAnchorPoint(x:Float, y:Float):Void{
		_ofImage_setAnchorPoint(__handle, x, y);
	}
	//resets the anchor to (0, 0)
	public function resetAnchor():Void{
		_ofImage_resetAnchor(__handle);
	}

	// draw:
	
	public function draw(x:Float, y:Float, ?w:Float, ?h:Float):Void{
		h == null ? _ofImage_draw2(__handle, x, y) : _ofImage_draw4(__handle, x, y, w, h);
	}
	
	public function getHeight():Float{
		return _ofImage_getHeight(__handle);
	}
	
	public function getWidth():Float{
		return _ofImage_getWidth(__handle);
	}

	public var width(__getWidth,null):Int;
	public var height(__getHeight,null):Int;
	public var bpp(__getBpp,null):Int; //bits per pixel
	public var type(__getType, null):Int; // OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, OF_IMAGE_COLOR_ALPHA
	
	public var __handle(default, null):Dynamic;
	
	var _pixels:BytesData;
	
	function __getWidth():Int {
		return Std.int(_ofImage_getWidth(__handle));
	}

	function __getHeight():Int {
		return Std.int(_ofImage_getHeight(__handle));
	}

	function __getBpp():Int {
		return _ofImage_getBpp(__handle);
	}

	function __getType():Int {
		return _ofImage_getType(__handle);
	}
	
	function __newByteData(size:Int):BytesData {
		return _pixels = Bytes.alloc(size).getData();
	}

	
	static var _ofImage_new = Lib.load("hxOpenFrameworks", "_ofImage_new", 0);
	static var _ofImage_allocate = Lib.load("hxOpenFrameworks", "_ofImage_allocate", 4);
	static var _ofImage_clear = Lib.load("hxOpenFrameworks", "_ofImage_clear", 1);
	static var _ofImage_clone = Lib.load("hxOpenFrameworks", "_ofImage_clone", 2);
	static var _ofImage_setUseTexture = Lib.load("hxOpenFrameworks", "_ofImage_setUseTexture", 2);
	static var _ofImage_getTextureReference = Lib.load("hxOpenFrameworks", "_ofImage_getTextureReference", 1);
	static var _ofImage_loadImage = Lib.load("hxOpenFrameworks", "_ofImage_loadImage", 2);
	static var _ofImage_saveImage = Lib.load("hxOpenFrameworks", "_ofImage_saveImage", 2);
	static var _ofImage_setFromPixels = Lib.load("hxOpenFrameworks", "_ofImage_setFromPixels", 2);
	static var _ofImage_setImageType = Lib.load("hxOpenFrameworks", "_ofImage_setImageType", 2);
	static var _ofImage_resize = Lib.load("hxOpenFrameworks", "_ofImage_resize", 3);
	static var _ofImage_grabScreen = Lib.load("hxOpenFrameworks", "_ofImage_grabScreen", 5);
	static var _ofImage_update = Lib.load("hxOpenFrameworks", "_ofImage_update", 1);
	static var _ofImage_setAnchorPercent = Lib.load("hxOpenFrameworks", "_ofImage_setAnchorPercent", 3);
	static var _ofImage_setAnchorPoint = Lib.load("hxOpenFrameworks", "_ofImage_setAnchorPoint", 3);
	static var _ofImage_resetAnchor = Lib.load("hxOpenFrameworks", "_ofImage_resetAnchor", 1);
	static var _ofImage_draw4 = Lib.load("hxOpenFrameworks", "_ofImage_draw4", 5);
	static var _ofImage_draw2 = Lib.load("hxOpenFrameworks", "_ofImage_draw2", 3);
	static var _ofImage_getHeight = Lib.load("hxOpenFrameworks", "_ofImage_getHeight", 1);
	static var _ofImage_getWidth = Lib.load("hxOpenFrameworks", "_ofImage_getWidth", 1);
	static var _ofImage_getBpp = Lib.load("hxOpenFrameworks", "_ofImage_getBpp", 1);
	static var _ofImage_getType = Lib.load("hxOpenFrameworks", "_ofImage_getType", 1);
	static var _ofImage_setHandle = Lib.load("hxOpenFrameworks", "_ofImage_setHandle", 2);
}
