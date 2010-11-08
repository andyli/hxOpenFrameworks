package of.graphics;

import cpp.Lib;
import haxe.io.BytesData;
import of.utils.Types;

class Texture 
{

	public function new(?handle:Dynamic):Void {
		__handle = handle == null ? _ofTexture_new() : handle;
	}
	
	// -----------------------------------------------------------------------
	// we allow pass by copy and assignment operator
	// it does a straight copy but you are getting the textureID of mom's texture
	// so this means that your texture and mom's texture are the same thing
	// so in other words be careful! calling clear on your texture will trash mom's
	// texture and vice versa.
	public function clone(mom:Texture):Void{
		_ofTexture_clone(__handle, mom.__handle);
	}
	
	// -----------------------------------------------------------------------

	//uses the currently set OF texture type - default ARB texture
	//bUseARBExtention lets you overide the default OF texture type
	public function allocate(w:Int, h:Int, internalGlDataType:Int, ?bUseARBExtention:Bool = true):Void{
		_ofTexture_allocate(__handle, w, h, internalGlDataType, bUseARBExtention);
	}
	
	public function clear():Void{
		_ofTexture_clear(__handle);
	}

	
	public function loadData(data:BytesData, w:Int, h:Int, glDataType:Int):Void{
		_ofTexture_loadData(__handle, data, w, h, glDataType);
	}

	
	public function loadScreenData(x:Int, y:Int, w:Int, h:Int):Void{
		_ofTexture_loadScreenData(__handle, x, y, w, h);
	}

	//the anchor is the point the image is drawn around.
	//this can be useful if you want to rotate an image around a particular point.
	//set the anchor as a percentage of the image width/height ( 0.0-1.0 range )
	public function setAnchorPercent(xPct:Float, yPct:Float):Void{
		_ofTexture_setAnchorPercent(__handle, xPct, yPct);
	}
	//set the anchor point in pixels
	public function setAnchorPoint(x:Float, y:Float):Void{
		_ofTexture_setAnchorPoint(__handle, x, y);
	}
	//resets the anchor to (0, 0)
	public function resetAnchor():Void{
		_ofTexture_resetAnchor(__handle);
	}

	public function draw(x:Float, y:Float, ?w:Float, ?h:Float):Void{
		h == null ? _ofTexture_draw2(__handle, x, y) : _ofTexture_draw4(__handle, x, y, w, h);
	}

	//for the advanced user who wants to draw textures in their own way
	
	public function bind():Void{
		_ofTexture_bind(__handle);
	}
	
	public function unbind():Void{
		_ofTexture_unbind(__handle);
	}
	
	// these are helpers to allow you to get points for the texture ala "glTexCoordf" 
	// but are texture type independent. 
	// use them for immediate or non immediate mode
	
	public function getCoordFromPoint(xPos:Float, yPos:Float):Point{
		return new Point(null,null,null,_ofTexture_getCoordFromPoint(__handle, xPos, yPos));
	}
	
	public function getCoordFromPercent(xPts:Float, yPts:Float):Point{
		return new Point(null,null,null,_ofTexture_getCoordFromPercent(__handle, xPts, yPts));
	}
	
	/*
	public function setTextureWrap(wrapModeHorizontal:Int, wrapModeVertical:Int):Void{
		_ofTexture_setTextureWrap(wrapModeHorizontal, wrapModeVertical);
	}
	
	public function setTextureMinMagFilter(minFilter:Int, maxFilter:Int):Void{
		_ofTexture_setTextureMinMagFilter(minFilter, maxFilter);
	}*/

	
	public function bAllocated():Bool{
		return _ofTexture_bAllocated();
	}

	public function getHeight():Float{
		return _ofTexture_getHeight(__handle);
	}
	
	public function getWidth():Float{
		return _ofTexture_getWidth(__handle);
	}
	
	public function getTextureData():TextureData {
		return new TextureData(_ofTexture_getTextureData(__handle));
	}
	
	public var texData(getTextureData, null):TextureData;
	
	
	public var __handle(default, null):Dynamic;
	
	static var _ofTexture_new = Lib.load("hxOpenFrameworks", "_ofTexture_new", 0);
	static var _ofTexture_clone = Lib.load("hxOpenFrameworks", "_ofTexture_clone", 2);
	static var _ofTexture_allocate = Lib.load("hxOpenFrameworks", "_ofTexture_allocate", 5);
	static var _ofTexture_clear = Lib.load("hxOpenFrameworks", "_ofTexture_clear", 1);
	static var _ofTexture_loadData = Lib.load("hxOpenFrameworks", "_ofTexture_loadData", 5);
	static var _ofTexture_loadScreenData = Lib.load("hxOpenFrameworks", "_ofTexture_loadScreenData", 5);
	static var _ofTexture_setAnchorPercent = Lib.load("hxOpenFrameworks", "_ofTexture_setAnchorPercent", 3);
	static var _ofTexture_setAnchorPoint = Lib.load("hxOpenFrameworks", "_ofTexture_setAnchorPoint", 3);
	static var _ofTexture_resetAnchor = Lib.load("hxOpenFrameworks", "_ofTexture_resetAnchor", 1);
	static var _ofTexture_bind = Lib.load("hxOpenFrameworks", "_ofTexture_bind", 1);
	static var _ofTexture_unbind = Lib.load("hxOpenFrameworks", "_ofTexture_unbind", 1);
	static var _ofTexture_getCoordFromPoint = Lib.load("hxOpenFrameworks", "_ofTexture_getCoordFromPoint", 3);		
	static var _ofTexture_getCoordFromPercent = Lib.load("hxOpenFrameworks", "_ofTexture_getCoordFromPercent", 3);
	/*	
	static var _ofTexture_setTextureWrap = Lib.load("hxOpenFrameworks", "_ofTexture_setTextureWrap", 3);
	static var _ofTexture_setTextureMinMagFilter = Lib.load("hxOpenFrameworks", "_ofTexture_setTextureMinMagFilter", 3);
	*/
	static var _ofTexture_bAllocated = Lib.load("hxOpenFrameworks", "_ofTexture_bAllocated", 1);
	static var _ofTexture_draw4 = Lib.load("hxOpenFrameworks", "_ofTexture_draw4", 5);
	static var _ofTexture_draw2 = Lib.load("hxOpenFrameworks", "_ofTexture_draw2", 3);
	static var _ofTexture_getHeight = Lib.load("hxOpenFrameworks", "_ofTexture_getHeight", 1);
	static var _ofTexture_getWidth = Lib.load("hxOpenFrameworks", "_ofTexture_getWidth", 1);
	static var _ofTexture_getTextureData = Lib.load("hxOpenFrameworks", "_ofTexture_getTextureData", 1);
}

private class TextureData {
	public function new(handle:Dynamic):Void {
		__handle = handle;
	}
	
	public var bAllocated(__get_bAllocated,__set_bAllocated):Bool;
	public var glType(__get_glType,__set_glType):Int;
	public var glTypeInternal(__get_glTypeInternal,__set_glTypeInternal):Int;
	public var textureTarget(__get_textureTarget,__set_textureTarget):Int;
	public var pixelType(__get_pixelType,__set_pixelType):Int;
	public var tex_t(__get_tex_t,__set_tex_t):Float;
	public var tex_u(__get_tex_u,__set_tex_u):Float;
	public var tex_w(__get_tex_w,__set_tex_w):Float;
	public var tex_h(__get_tex_h,__set_tex_h):Float;
	public var width(__get_width,__set_width):Float;
	public var height(__get_height,__set_height):Float;
	public var bFlipTexture(__get_bFlipTexture,__set_bFlipTexture):Bool;
	public var textureID(__get_textureID, __set_textureID):Int;
	
	public var __handle(default, null):Dynamic;
	
	static var _ofTextureData_get_bAllocated = Lib.load("hxOpenFrameworks", "_ofTextureData_get_bAllocated", 1);
	static var _ofTextureData_set_bAllocated = Lib.load("hxOpenFrameworks", "_ofTextureData_set_bAllocated", 2);
	static var _ofTextureData_get_glType = Lib.load("hxOpenFrameworks", "_ofTextureData_get_glType", 1);
	static var _ofTextureData_set_glType = Lib.load("hxOpenFrameworks", "_ofTextureData_set_glType", 2);
	static var _ofTextureData_get_glTypeInternal = Lib.load("hxOpenFrameworks", "_ofTextureData_get_glTypeInternal", 1);
	static var _ofTextureData_set_glTypeInternal = Lib.load("hxOpenFrameworks", "_ofTextureData_set_glTypeInternal", 2);
	static var _ofTextureData_get_textureTarget = Lib.load("hxOpenFrameworks", "_ofTextureData_get_textureTarget", 1);
	static var _ofTextureData_set_textureTarget = Lib.load("hxOpenFrameworks", "_ofTextureData_set_textureTarget", 2);
	static var _ofTextureData_get_pixelType = Lib.load("hxOpenFrameworks", "_ofTextureData_get_pixelType", 1);
	static var _ofTextureData_set_pixelType = Lib.load("hxOpenFrameworks", "_ofTextureData_set_pixelType", 2);
	static var _ofTextureData_get_tex_t = Lib.load("hxOpenFrameworks", "_ofTextureData_get_tex_t", 1);
	static var _ofTextureData_set_tex_t = Lib.load("hxOpenFrameworks", "_ofTextureData_set_tex_t", 2);
	static var _ofTextureData_get_tex_u = Lib.load("hxOpenFrameworks", "_ofTextureData_get_tex_u", 1);
	static var _ofTextureData_set_tex_u = Lib.load("hxOpenFrameworks", "_ofTextureData_set_tex_u", 2);
	static var _ofTextureData_get_tex_w = Lib.load("hxOpenFrameworks", "_ofTextureData_get_tex_w", 1);
	static var _ofTextureData_set_tex_w = Lib.load("hxOpenFrameworks", "_ofTextureData_set_tex_w", 2);
	static var _ofTextureData_get_tex_h = Lib.load("hxOpenFrameworks", "_ofTextureData_get_tex_h", 1);
	static var _ofTextureData_set_tex_h = Lib.load("hxOpenFrameworks", "_ofTextureData_set_tex_h", 2);
	static var _ofTextureData_get_width = Lib.load("hxOpenFrameworks", "_ofTextureData_get_width", 1);
	static var _ofTextureData_set_width = Lib.load("hxOpenFrameworks", "_ofTextureData_set_width", 2);
	static var _ofTextureData_get_height = Lib.load("hxOpenFrameworks", "_ofTextureData_get_height", 1);
	static var _ofTextureData_set_height = Lib.load("hxOpenFrameworks", "_ofTextureData_set_height", 2);
	static var _ofTextureData_get_bFlipTexture = Lib.load("hxOpenFrameworks", "_ofTextureData_get_bFlipTexture", 1);
	static var _ofTextureData_set_bFlipTexture = Lib.load("hxOpenFrameworks", "_ofTextureData_set_bFlipTexture", 2);
	static var _ofTextureData_get_textureID = Lib.load("hxOpenFrameworks", "_ofTextureData_get_textureID", 1);
	static var _ofTextureData_set_textureID = Lib.load("hxOpenFrameworks", "_ofTextureData_set_textureID", 2);
	
	function __get_bAllocated():Bool {
		return _ofTextureData_get_bAllocated(__handle);
	}
	function __set_bAllocated(val:Bool):Bool {
		return _ofTextureData_set_bAllocated(__handle,val);
	}
	
	function __get_glType():Int {
		return _ofTextureData_get_glType(__handle);
	}
	function __set_glType(val:Int):Int {
		return _ofTextureData_set_glType(__handle,val);
	}

	function __get_glTypeInternal():Int {
		return _ofTextureData_get_glTypeInternal(__handle);
	}
	function __set_glTypeInternal(val:Int):Int {
		return _ofTextureData_set_glTypeInternal(__handle,val);
	}

	function __get_textureTarget():Int {
		return _ofTextureData_get_textureTarget(__handle);
	}
	function __set_textureTarget(val:Int):Int {
		return _ofTextureData_set_textureTarget(__handle,val);
	}

	function __get_pixelType():Int {
		return _ofTextureData_get_pixelType(__handle);
	}
	function __set_pixelType(val:Int):Int {
		return _ofTextureData_set_pixelType(__handle,val);
	}

	function __get_tex_t():Float {
		return _ofTextureData_get_tex_t(__handle);
	}
	function __set_tex_t(val:Float):Float {
		return _ofTextureData_set_tex_t(__handle,val);
	}

	function __get_tex_u():Float {
		return _ofTextureData_get_tex_u(__handle);
	}
	function __set_tex_u(val:Float):Float {
		return _ofTextureData_set_tex_u(__handle,val);
	}

	function __get_tex_w():Float {
		return _ofTextureData_get_tex_w(__handle);
	}
	function __set_tex_w(val:Float):Float {
		return _ofTextureData_set_tex_w(__handle,val);
	}

	function __get_tex_h():Float {
		return _ofTextureData_get_tex_h(__handle);
	}
	function __set_tex_h(val:Float):Float {
		return _ofTextureData_set_tex_h(__handle,val);
	}

	function __get_width():Float {
		return _ofTextureData_get_width(__handle);
	}
	function __set_width(val:Float):Float {
		return _ofTextureData_set_width(__handle,val);
	}

	function __get_height():Float {
		return _ofTextureData_get_height(__handle);
	}
	function __set_height(val:Float):Float {
		return _ofTextureData_set_height(__handle,val);
	}

	function __get_bFlipTexture():Bool {
		return _ofTextureData_get_bFlipTexture(__handle);
	}
	function __set_bFlipTexture(val:Bool):Bool {
		return _ofTextureData_set_bFlipTexture(__handle,val);
	}

	function __get_textureID():Int {
		return _ofTextureData_get_textureID(__handle);
	}
	function __set_textureID(val:Int):Int {
		return _ofTextureData_set_textureID(__handle,val);
	}
}
