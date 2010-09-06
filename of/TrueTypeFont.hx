package of;

import cpp.Lib;
import haxe.io.BytesData;
import of.Types;

typedef TTFContour = {
	var pts:Array<Point>;
}

typedef TTFCharacter = {
	var contours:Array<TTFContour>;
}

class TrueTypeFont 
{

	public function new(?handle:Dynamic):Void {
		__handle = handle == null ? _ofTrueTypeFont_new() : handle;
	}
	
	//				-- default, non-full char set, anti aliased:
	public function loadFont(filename:String, fontsize:Int, ?_bAntiAliased:Bool = true, ?_bFullCharacterSet:Bool = false, ?makeContours:Bool = false):Void {
		_ofTrueTypeFont_loadFont(__handle, {filename:filename, fontsize:fontsize, _bAntiAliased:_bAntiAliased, _bFullCharacterSet:_bFullCharacterSet, makeContours:makeContours});
	}

	public var bLoadedOk(__get_bLoadedOk,__set_bLoadedOk):Bool;
	public var bAntiAlised(__get_bAntiAlised,__set_bAntiAlised):Bool;
	public var bFullCharacterSet(__get_bFullCharacterSet,__set_bFullCharacterSet):Bool;

  	
	public function getLineHeight():Float{
		return _ofTrueTypeFont_getLineHeight(__handle);
	}
  	
	public function setLineHeight(height:Float):Void{
		_ofTrueTypeFont_setLineHeight(__handle, height);
	}
	
	public function stringWidth(s:String):Float{
		return _ofTrueTypeFont_stringWidth(__handle, s);
	}
	
	public function stringHeight(s:String):Float{
		return _ofTrueTypeFont_stringHeight(__handle, s);
	}
	
	
	public function getStringBoundingBox(s:String, x:Float, y:Float):Rectangle{
		return new Rectangle(_ofTrueTypeFont_getStringBoundingBox(__handle, s, x, y));
	}
	
	
	public function drawString(s:String, x:Float, y:Float):Void{
		_ofTrueTypeFont_drawString(__handle, s, x, y);
	}
	
	public function drawStringAsShapes(s:String, x:Float, y:Float):Void{
		_ofTrueTypeFont_drawStringAsShapes(__handle, s, x, y);
	}
	
	public var nCharacters(__get_nCharacters,__set_nCharacters):Int;
	

	public function getCharacterAsPoints(character:Int):TTFCharacter{
		return _ofTrueTypeFont_getCharacterAsPoints(__handle, character, callback(Type.createInstance,Point));
	}
	
	public var __handle(default, null):Dynamic;
	
	function __get_bLoadedOk():Bool {
		return _ofTrueTypeFont_get_bLoadedOk(__handle);
	}
	function __set_bLoadedOk(val:Bool):Bool {
		return _ofTrueTypeFont_set_bLoadedOk(__handle,val);
	}

	function __get_bAntiAlised():Bool {
		return _ofTrueTypeFont_get_bAntiAlised(__handle);
	}
	function __set_bAntiAlised(val:Bool):Bool {
		return _ofTrueTypeFont_set_bAntiAlised(__handle,val);
	}

	function __get_bFullCharacterSet():Bool {
		return _ofTrueTypeFont_get_bFullCharacterSet(__handle);
	}
	function __set_bFullCharacterSet(val:Bool):Bool {
		return _ofTrueTypeFont_set_bFullCharacterSet(__handle,val);
	}

	function __get_nCharacters():Int {
		return _ofTrueTypeFont_get_nCharacters(__handle);
	}
	function __set_nCharacters(val:Int):Int {
		return _ofTrueTypeFont_set_nCharacters(__handle,val);
	}

	
	static var _ofTrueTypeFont_new = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_new", 0);
	static var _ofTrueTypeFont_loadFont = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_loadFont", 2);
  	static var _ofTrueTypeFont_getLineHeight = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_getLineHeight", 1);
  	static var _ofTrueTypeFont_setLineHeight = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_setLineHeight", 2);
	static var _ofTrueTypeFont_stringWidth = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_stringWidth", 2);
	static var _ofTrueTypeFont_stringHeight = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_stringHeight", 2);
	static var _ofTrueTypeFont_getStringBoundingBox = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_getStringBoundingBox", 4);
	static var _ofTrueTypeFont_drawString = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_drawString", 4);
	static var _ofTrueTypeFont_drawStringAsShapes = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_drawStringAsShapes", 4);
	static var _ofTrueTypeFont_getCharacterAsPoints = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_getCharacterAsPoints", 3);
	static var _ofTrueTypeFont_get_bLoadedOk = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_get_bLoadedOk", 1);
	static var _ofTrueTypeFont_set_bLoadedOk = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_set_bLoadedOk", 2);
	static var _ofTrueTypeFont_get_bAntiAlised = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_get_bAntiAlised", 1);
	static var _ofTrueTypeFont_set_bAntiAlised = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_set_bAntiAlised", 2);
	static var _ofTrueTypeFont_get_bFullCharacterSet = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_get_bFullCharacterSet", 1);
	static var _ofTrueTypeFont_set_bFullCharacterSet = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_set_bFullCharacterSet", 2);
	static var _ofTrueTypeFont_get_nCharacters = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_get_nCharacters", 1);
	static var _ofTrueTypeFont_set_nCharacters = Lib.load("hxOpenFrameworks", "_ofTrueTypeFont_set_nCharacters", 2);

}