package of;

import cpp.Lib;

class Point {
	public function new(?x:Float = 0, ?y:Float = 0, ?z:Float = 0):Void {
		__handle = _ofPoint_new(x, y, z);
	}
	
	public function set(x:Float, y:Float, z:Float):Void {
		_ofPoint_set(__handle, x, y, z);
	}
	
	public var x(__getX,__setX):Float;
	public var y(__getY,__setY):Float;
	public var z(__getZ,__setZ):Float;
	
	public var __handle(default, null):Dynamic;
	
	static var _ofPoint_new = Lib.load("hxOpenFrameworks", "_ofPoint_new", 3);
	static var _ofPoint_getX = Lib.load("hxOpenFrameworks", "_ofPoint_getX", 1);
	static var _ofPoint_getY = Lib.load("hxOpenFrameworks", "_ofPoint_getY", 1);
	static var _ofPoint_getZ = Lib.load("hxOpenFrameworks", "_ofPoint_getZ", 1);
	static var _ofPoint_setX = Lib.load("hxOpenFrameworks", "_ofPoint_setX", 2);
	static var _ofPoint_setY = Lib.load("hxOpenFrameworks", "_ofPoint_setY", 2);
	static var _ofPoint_setZ = Lib.load("hxOpenFrameworks", "_ofPoint_setZ", 2);
	static var _ofPoint_set = Lib.load("hxOpenFrameworks", "_ofPoint_set", 4);
	
	function __getX():Float {
		return _ofPoint_getX(__handle);
	}
	function __setX(x:Float):Float {
		return _ofPoint_setX(__handle, x);
	}
	function __getY():Float {
		return _ofPoint_getY(__handle);
	}
	function __setY(y:Float):Float {
		return _ofPoint_setY(__handle, y);
	}
	function __getZ():Float {
		return _ofPoint_getX(__handle);
	}
	function __setZ(x:Float):Float {
		return _ofPoint_setX(__handle, z);
	}
}